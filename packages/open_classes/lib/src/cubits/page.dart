// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_rendering/theta_rendering.dart';
import 'package:projects_db/projects_db.dart';
import 'package:uuid/uuid.dart';
import 'package:theta_models/theta_models.dart';
import 'package:light_logger/light_logger.dart';
import 'package:clear_response/clear_response.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit(
    this.nodeRendering,
    this.findNodeRendering,
  ) : super(const PageUnitilized());

  final NodeRendering nodeRendering;
  final FindNodeRendering findNodeRendering;

  StreamSubscription? _changeStreamSubscription;
  ProjectsDBStream? streamSub;

  Future<void> onFocus({
    required final PageObject page,
    final bool forPlay = false,
  }) async {
    if (forPlay) {
      await _onFocusPlayMode(page: page);
    } else {
      await _fetch(page);
      _listenEvents(page);
    }
  }

  Future<void> onFocusFromLocalToGlobalCubit({
    required final PageObject page,
    required final List<DatasetObject> datasets,
  }) async {
    emit(
      PageLoaded(
        page: page,
        params: page.defaultParams,
        states: page.defaultStates,
        datasets: datasets,
      ),
    );
    _listenEvents(page);
  }

  Future<void> _onFocusPlayMode({
    required final PageObject page,
  }) async {
    emit(
      PageLoaded(
        page: page,
        params: page.defaultParams,
        states: page.defaultStates,
        datasets: const [],
      ),
    );
    _listenEvents(page);
  }

  void fetchAllNodes(
    final BuildContext context,
  ) {
    if (state is PageLoaded) {
      _fetch((state as PageLoaded).page);
    }
  }

  void updateDatasets(
    final List<DatasetObject> datasets,
  ) {
    if (datasets == (state as PageLoaded).datasets) return;
    emit((state as PageLoaded).copyWith(datasets: datasets));
  }

  void updateWithNewPage(final PageObject page) => emit(
        PageLoaded(
          page: page,
          params: page.defaultParams,
          states: page.defaultStates,
          datasets: const [],
        ),
      );

  void addParam({
    final VariableType? type,
  }) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    const pagePrefix = 'Param';
    var pageName = '';
    var index = 0;
    do {
      index++;
      pageName = '$pagePrefix $index';
    } while (currentState.page.defaultParams.indexWhere(
          (final element) => element.name == pageName,
        ) !=
        -1);
    final params = [
      ...currentState.page.defaultParams,
      VariableObject(
        id: const Uuid().v1(),
        type: type ?? VariableType.string,
        name: pageName,
        defaultValue: '0',
      ),
    ];
    final newPage = currentState.page.copyWith(params: params);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void updateParam(final VariableObject newVar) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    final params = [...currentState.page.defaultParams];
    final index = params.indexWhere((final element) => element.id == newVar.id);
    params[index] = newVar;
    final newPage = currentState.page.copyWith(params: params);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void deleteParam(final String varId) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    final params = [
      ...currentState.page.defaultParams,
    ]..removeWhere((final element) => element.id == varId);
    final newPage = currentState.page.copyWith(params: params);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void addState({
    final VariableType? type,
  }) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    const pagePrefix = 'State';
    var pageName = '';
    var index = 0;
    do {
      index++;
      pageName = '$pagePrefix $index';
    } while (currentState.page.defaultStates.indexWhere(
          (final element) => element.name == pageName,
        ) !=
        -1);
    final states = [
      ...currentState.page.defaultStates,
      VariableObject(
        id: const Uuid().v1(),
        type: type ?? VariableType.string,
        name: pageName,
        defaultValue: '0',
      ),
    ];
    final newPage = currentState.page.copyWith(states: states);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: states,
        datasets: currentState.datasets,
      ),
    );
  }

  void updateState(final VariableObject newVar) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    final states = currentState.page.defaultStates;
    final index = states.indexWhere((final element) => element.id == newVar.id);
    states[index] = newVar;
    final newPage = currentState.page.copyWith(states: states);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: states,
        datasets: currentState.datasets,
      ),
    );
  }

  void deleteState(final String varId) {
    if (state is! PageLoaded) return;
    final currentState = state as PageLoaded;
    final states = currentState.page.defaultStates
      ..removeWhere((final element) => element.id == varId);
    final newPage = currentState.page.copyWith(states: states);
    updatePage(newPage);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: states,
        datasets: currentState.datasets,
      ),
    );
  }

  void updateStateInPlayMode(
    final VariableObject variable,
  ) {
    final list = List<VariableObject>.from((state as PageLoaded).states);
    final index = list.indexWhere((final element) => element.id == variable.id);
    list[index] = variable;
    final newState = (state as PageLoaded).copyWith(states: list);
    emit(newState);
  }

  void _listenEvents(
    final PageObject page,
  ) {
    streamSub?.disconnect();
    streamSub = ProjectsDBStream()
      ..connect()
      ..subscribe('page_id', page.id)
      ..onEvent((final dynamic e) {
        Logger.printWarning('PageCubit, listen events, event: $e');
        if (e['doc'] == null) return;
        _fetch(page);
        /*
        if (e['action'] == 'add') {
          _fetch(page);
          return;
          _addAction(page.id, e['doc'] as Map<String, dynamic>);
        } else if (e['action'] == 'edit') {
          _fetch(page);
          return;
          _editAction(
            page.id,
            e['doc'] as Map<String, dynamic>,
            e['changes'] as Map<String, dynamic>,
          );
          return;
        } else if (e['action'] == 'del') {
          _fetch(page);
          return;
          _deleteAction(
            page.id,
            e['doc'] as Map<String, dynamic>,
          );
        }*/
      });
  }

  /*
  void _addAction(final PageID pageId, final Map<String, dynamic> doc) {
    final node = NDynamic.fromJson(doc, pageId);
    final currentState = state;
    if (currentState is! PageLoaded) return;
    final nodes = [...currentState.page.flatList, node];
    final uniqueNodes = nodes.unique((final x) => x.nid);
    final scaffold = nodeRendering.renderTree(uniqueNodes);
    final flatList = nodeRendering.renderFlatList(scaffold);
    final newPage =
        currentState.page.copyWith(flatList: flatList, scaffold: scaffold);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void _editAction(
    final PageID pageId,
    final Map<String, dynamic> doc,
    final Map<String, dynamic> changes,
  ) {
    final currentState = state;
    if (currentState is! PageLoaded) return;
    final nodes = [...currentState.page.flatList];
    final index =
        nodes.indexWhere((final element) => element.nid == doc['_id']);
    if (index == -1) return;
    Logger.printMessage(
      '${Map<String, dynamic>.from(changes['body'] as Map).runtimeType}',
    );
    final nodeUpdated = (nodes[index] as NDynamic).copyWith()
      ..body = NodeBody.fromJson(
        Map<String, dynamic>.from(changes['body'] as Map),
        EnumToString.fromString(NType.values, doc['type'] as String)!,
      );
    nodes[index] = nodeUpdated;
    final scaffold = nodeRendering.renderTree(nodes);
    final flatList = nodeRendering.renderFlatList(scaffold);
    final newPage =
        currentState.page.copyWith(flatList: flatList, scaffold: scaffold);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void updateAfterEdit(final CNode node) {
    final currentState = state;
    if (currentState is! PageLoaded) return;
    final nodes = [...currentState.page.flatList];
    final uniqueNodes = nodes.unique((final x) => x.nid);
    final scaffold = nodeRendering.renderTree(uniqueNodes);
    final flatList = nodeRendering.renderFlatList(scaffold);
    final newPage =
        currentState.page.copyWith(flatList: flatList, scaffold: scaffold);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }

  void _deleteAction(
    final PageID pageId,
    final Map<String, dynamic> doc,
  ) {
    final currentState = state;
    if (currentState is! PageLoaded) return;
    final nodes = [
      ...currentState.page.flatList
        ..removeWhere((final element) => element.nid == doc['_id'])
    ];
    final uniqueNodes = nodes.unique((final x) => x.nid);
    final scaffold = nodeRendering.renderTree(uniqueNodes);
    final flatList = nodeRendering.renderFlatList(scaffold);
    final newPage =
        currentState.page.copyWith(flatList: flatList, scaffold: scaffold);
    emit(
      PageLoaded(
        page: newPage,
        params: currentState.params,
        states: currentState.states,
        datasets: currentState.datasets,
      ),
    );
  }*/

  Future<void> _fetch(final PageObject page) async {
    Future<void> update() async {
      try {
        final list = await fetchNodesByPage(page.id);
        if (list.error != null) {
          Logger.printError(
            'Error fetching nodes in page, page id: ${page.id}, error: ${list.error?.message}',
          );
          return;
        }
        final nodes = list.data!;
        final scaffold = nodeRendering.renderTree(nodes);
        final flatList = nodeRendering.renderFlatList(scaffold);
        /*
        for (final element in nodes) {
          if (element.parent == null) {
            final parent = findNodeRendering.findParentByChildrenIds(
              flatList: nodes,
              element: element,
            );
            if (parent != null) {
              element.parent = parent.nid;
            }
          }
        }*/
        if (state is PageLoaded) {
          final currentState = state as PageLoaded;
          if (page.id == currentState.page.id) {
            emit(
              PageLoaded(
                page: currentState.page.copyWith(
                  flatList: flatList,
                  scaffold: scaffold,
                ),
                params: page.defaultParams,
                states: page.defaultStates,
                datasets: currentState.datasets,
              ),
            );
          } else {
            emit(
              PageLoaded(
                page: page.copyWith(
                  flatList: flatList,
                  scaffold: scaffold,
                ),
                params: page.defaultParams,
                states: page.defaultStates,
                datasets: const [],
              ),
            );
          }
        } else {
          emit(
            PageLoaded(
              page: page.copyWith(
                flatList: flatList,
                scaffold: scaffold,
              ),
              params: page.defaultParams,
              states: page.defaultStates,
              datasets: const [],
            ),
          );
        }
      } catch (e) {
        Logger.printError('Error fetching nodes, error: $e');
      }
    }

    await update();
  }

  Future<void> updatePage(
    final PageObject page,
  ) async {
    final resp = await ProjectsDB.instance.client.update(
      'pages',
      match: <String, dynamic>{'_id': page.id},
      data: const PageMapper().toJson(page),
    );
    if (resp.error != null) {
      Logger.printError(
        'Error updating the page id: ${page.id}, error: ${resp.error}',
      );
    }
  }

  Future<ClearResponse<List<CNode>?, ClearErrorResponse?>> fetchNodesByPage(
    final PageID pageId,
  ) async {
    final res = await ProjectsDB.I.client.selectList(
      'nodes',
      match: <String, dynamic>{
        'page_id': pageId,
      },
    );
    if (res.error != null) {
      Logger.printError(
        'Error fetching nodes by page id, error: ${res.error?.message}',
      );
      return ClearResponse(
        data: null,
        error: ClearErrorResponse(
          message:
              'Error fetching nodes by page id, error: ${res.error?.message}',
        ),
      );
    }
    final nodes = <CNode>[];
    for (final e in res.data!) {
      nodes.add(
        CNode.fromJson(
          e['type'],
          e as Map<String, dynamic>,
        ),
      );
    }
    return ClearResponse(data: nodes, error: null);
  }

  @override
  Future<void> close() async {
    //cancel streams
    await _changeStreamSubscription?.cancel();
    await super.close();
    return;
  }
}

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object?> get props => [];

  @override
  String toString() => 'PageState {}';
}

class PageUnitilized extends PageState {
  const PageUnitilized();

  @override
  String toString() => 'PageUnitilized {}';
}

class PageLoading extends PageState {
  const PageLoading();

  @override
  String toString() => 'PageLoading {}';
}

class PageLoaded extends PageState {
  const PageLoaded({
    required this.page,
    required this.params,
    required this.states,
    required this.datasets,
  });

  final PageObject page;
  final List<VariableObject> params;
  final List<VariableObject> states;
  final List<DatasetObject> datasets;

  PageLoaded copyWith({
    final PageObject? page,
    final List<VariableObject>? params,
    final List<VariableObject>? states,
    final List<DatasetObject>? datasets,
  }) =>
      PageLoaded(
        page: page ?? this.page,
        params: params ?? this.params,
        states: states ?? this.states,
        datasets: datasets ?? this.datasets,
      );

  @override
  List<Object?> get props => [
        page,
        page.scaffold,
        page.flatList,
        params,
        states,
        datasets,
      ];

  @override
  String toString() =>
      'PageLoaded { page id: ${page.id}, params count: ${params.length}, states count: ${states.length}, datasets count: $datasets }';
}

extension Unique<E, Id> on List<E> {
  List<E> unique([
    final Id Function(E element)? id,
    final bool inplace = true,
  ]) {
    final ids = <dynamic>{};
    final list = inplace ? this : List<E>.from(this);
    list.retainWhere((final x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
