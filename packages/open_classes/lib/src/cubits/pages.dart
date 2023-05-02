// ignore_for_file: public_member_api_docs
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_logger/light_logger.dart';
import 'package:projects_db/projects_db.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class PagesCubit extends Cubit<List<PageObject>> {
  PagesCubit(
    this.nodeRendering,
    this.channelId,
  ) : super([]);

  final NodeRendering nodeRendering;
  final ChannelID channelId;

  Future<void> loadPagesForEditorMode() async {
    await _loadPages();
    _listenEvents();
  }

  Future _loadPages() async {
    final pagesList = await _getPages();
    emit(pagesList);
  }

  Future<void> loadPagesForPlayMode() async {
    final pagesList = await _getPages();
    final temp = [
      ...pagesList.where((final element) => element.isPrimary),
      ...pagesList.where((final element) => !element.isPrimary),
    ];
    final pages = <PageObject>[];
    for (final page in temp) {
      final list = await _getNodes(page.id);
      if (list.isEmpty) {
        Logger.printError(
          'Error fetching nodes in page, page id: ${page.id}, error: "No nodes found in the page"',
        );
        return;
      }
      final scaffold = nodeRendering.renderTree(list);
      final flatList = nodeRendering.renderFlatList(scaffold);
      pages.add(
        page.copyWith(
          scaffold: scaffold,
          flatList: flatList,
        ),
      );
      emit(pages);
    }
  }

  Future<PageObject?> addPage(
    final String pageName,
    final PageObject page,
  ) async {
    ///! TODO:
    return null;
    /*
    return await _addPage(
      page,
    );*/
  }

  Future<void> removePage(final PageID pageId) async {
    _deletePage(pageId);
    final pages = [...state]..removeWhere((final e) => e.id == pageId);
    emit(pages);
  }

  Future<void> setPrimaryPage(final PageID pageId) async {
    final newPrimaryPageIndex =
        state.indexWhere((final element) => element.id == pageId);
    final newPrimaryPage = state[newPrimaryPageIndex].copyWith(isPrimary: true);

    final pages = [...state];
    pages[newPrimaryPageIndex] = newPrimaryPage;
    final futures = <Future>[];
    for (var i = 0; i < pages.length; i++) {
      if (i != newPrimaryPageIndex) {
        if (pages[i].isPrimary) {
          pages[i] = pages[i].copyWith(isPrimary: false);
          futures.add(_updatePage(pages[i]));
        }
      }
    }
    await Future.wait<void>([
      ...futures,
      _updatePage(newPrimaryPage),
    ]);
  }

  Future<List<PageObject>> _getPages() async {
    final res = await ProjectsDB.I.client.selectList('pages', match: {
      'channel_id': channelId,
    });
    if (res.error != null) {
      Logger.printError(
        'Error fetching pages for the current project, error: ${res.error?.message}',
      );
      return [];
    }
    return const PageMapper().listFromJson(res.data!);
  }

  Future<void> _updatePage(final PageObject page) async {
    await ProjectsDB.I.client.update(
      'pages',
      match: {
        '_id': page.id,
      },
      data: const PageMapper().toJson(page),
    );
  }

  Future<void> _deletePage(final PageID pageId) async {
    await ProjectsDB.I.client.delete(
      'pages',
      match: {
        '_id': pageId,
      },
    );
    await ProjectsDB.I.client.delete(
      'nodes',
      match: {
        'page_id': pageId,
      },
    );
  }

  Future<List<CNode>> _getNodes(final PageID pageId) async {
    final res = await ProjectsDB.I.client.selectList('nodes', match: {
      'page_id': pageId,
    });
    if (res.error != null) {
      Logger.printError(
        'Error fetching nodes for the page id $pageId, error: ${res.error?.message}',
      );
      return [];
    }
    return res.data!
        .map((final e) => const NodesParse().fromJson(e['type'], e) as CNode)
        .toList();
  }

  Future<void> duplicatePage(
    final PageID pageId,
  ) async {
    /*final res = await ProjectsDB.instance.client.duplicatePage(
      pageId,
      channelId,
    );
    if (res.error != null) {
      Logger.printError('Error duplicating page, error: ${res.error?.message}');
    }
    final newPageId = res.data['id'] as int;
    final list = [...state];
    final index = list.indexWhere((final element) => element.id == pageId);
    await ProjectsDB.I.client.update(
      'pages',
      match: <String, dynamic>{
        '_id': newPageId,
      },
      data: <String, dynamic>{
        'name': '${list[index].name}Copy',
        'isPrimary': false,
      },
    );*/
  }

  void _listenEvents() {
    ProjectsDBStream()
      ..connect()
      ..subscribe('channel_id', channelId)
      ..onEvent(
        (final dynamic e) async {
          final pages = await _getPages();
          if (pages.isNotEmpty) {
            emit(pages);
          }
        },
      );
  }
}
