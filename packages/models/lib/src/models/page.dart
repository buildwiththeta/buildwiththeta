// Dart imports:

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/variable.dart';
import 'package:theta_models/src/widgets/nodes/node.dart';

import 'index.dart';

enum PageEnum {
  empty,
  splash,
  onboarding,
  feed,
  articleDetail,
  login,
  component,
}

enum ComponentTypeEnum {
  visual,
  custom,
}

class PageObject extends Equatable {
  const PageObject({
    required this.id,
    required this.channelId,
    required this.scaffold,
    required this.flatList,
    this.name = 'EntryPoint',
    this.type = PageEnum.empty,
    this.isPrimary = false,
    this.isPage = true,
    this.defaultParams = const [],
    this.defaultStates = const [],
    this.route = '/',
    this.isAuthenticatedRequired = false,
    this.isHardCoded = false,
    this.runUrl,
    this.code,
  });

  final PageID id;
  final ChannelID channelId;
  final String name;
  final CNode scaffold;
  final List<CNode> flatList;
  final bool isPrimary;
  final bool isPage;
  final String route;
  final bool isAuthenticatedRequired;
  final bool isHardCoded;
  final String? runUrl;
  final String? code;
  final PageEnum type;

  /// List of params for the node, used for Scaffold
  final List<VariableObject> defaultParams;

  /// List of states for the node, used for Scaffold
  final List<VariableObject> defaultStates;

  @override
  List<Object?> get props => [
        id,
        channelId,
        name,
        scaffold,
        flatList,
        isPrimary,
        isPage,
        route,
        isAuthenticatedRequired,
        isHardCoded,
        runUrl,
        code,
        type,
        defaultParams,
        defaultStates,
      ];

  @override
  String toString() =>
      'PageObject { id: $id, name: $name, isPrimary: $isPrimary, isPage: $isPage, route: $route, isHardCoded: $isHardCoded, runUrl: $runUrl, code: $code}';

  PageObject copyWith({
    final String? id,
    final String? channelId,
    final String? name,
    final CNode? scaffold,
    final List<CNode>? flatList,
    final bool? isPrimary,
    final bool? isPage,
    final List<VariableObject>? params,
    final List<VariableObject>? states,
    final String? route,
    final bool? isAuthenticatedRequired,
    final bool? isHardCoded,
    final String? runUrl,
    final String? code,
  }) =>
      PageObject(
        id: id ?? this.id,
        channelId: channelId ?? this.channelId,
        name: name ?? this.name,
        scaffold: scaffold ?? this.scaffold,
        flatList: flatList ?? this.flatList,
        isPrimary: isPrimary ?? this.isPrimary,
        isPage: isPage ?? this.isPage,
        defaultParams: params ?? defaultParams,
        defaultStates: states ?? defaultStates,
        route: route ?? this.route,
        isAuthenticatedRequired:
            isAuthenticatedRequired ?? this.isAuthenticatedRequired,
        isHardCoded: isHardCoded ?? this.isHardCoded,
        runUrl: runUrl ?? this.runUrl,
        code: code ?? this.code,
      );
}
