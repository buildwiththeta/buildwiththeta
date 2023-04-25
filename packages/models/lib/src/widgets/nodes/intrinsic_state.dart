// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/constants_model.dart';
import 'package:theta_models/src/models/package.dart';
import 'package:theta_models/src/widgets/actions/enums/gestures.dart';
import 'package:theta_models/src/widgets/actions/enums/permissions.dart';
import 'package:theta_models/src/widgets/nodes/categories.dart';
import 'package:theta_models/src/widgets/nodes/children_enum.dart';
import 'package:theta_models/src/widgets/nodes/node_type.dart';
import 'package:theta_models/src/widgets/nodes/suggestion.dart';

// Project imports:
class IntrinsicState extends Equatable {
  const IntrinsicState({
    required this.nodeIcon,
    required this.synonymous,
    required this.displayName,
    required this.type,
    required this.category,
    required this.canHave,
    this.maxChildren,
    this.blockedTypes = const [],
    this.addChildLabels = const [],
    this.gestures = const [],
    this.permissions = const [],
    this.packages = const [],
    this.constants = const [],
    this.suggestionsTitle = 'Need Help with this Widget?',
    this.suggestions = const [
      Suggestion(
        title: 'Docs',
        description: 'Docs',
        linkToOpen: 'https://docs.teta.so/teta-docs/',
      )
    ],
  });

  /// Icon of the node.
  final String nodeIcon;

  final List<String> blockedTypes;

  /// This node can be found by name's synonymous?
  ///
  /// e.g.
  /// Name: 'Container'. Synonymous: ['div', 'box']
  final List<String> synonymous;

  /// Visible name of node. Must be humanized.
  final String displayName;

  /// Type of node.
  final String type;

  /// Max number of children the node can have.
  final int? maxChildren;

  /// Node's Category. It will be used in left widget panel.
  final NodeCategories category;

  /// This node can have a children, a child or none?
  final ChildrenEnum canHave;

  /// Labels displayed on tree graph.
  final List<String> addChildLabels;

  /// List of gesture supported by node.
  final List<Trigger> gestures;

  /// List of permissions to support in the released app -> dynamic based on node needs
  final List<Permissions> permissions;

  ///List of all packages required for this node to work
  final List<PackageModel> packages;

  ///List of all constants required for this node to work
  final List<ConstantsModel> constants;

  ///The headline for suggestions, label
  final String suggestionsTitle;

  /// Get all node suggestion.
  /// suggestion are the articles showed on right bar,
  /// used to let the user know how the node work
  final List<Suggestion> suggestions;

  bool get canHaveChildren => canHave == ChildrenEnum.children;
  bool get canHaveChild => canHave == ChildrenEnum.child;

  static IntrinsicState get basic => const IntrinsicState(
        nodeIcon: '',
        blockedTypes: [],
        synonymous: [],
        displayName: '',
        type: NType.nil,
        maxChildren: null,
        category: NodeCategories.unclassified,
        canHave: ChildrenEnum.none,
        addChildLabels: [],
        gestures: <Trigger>[],
        permissions: <Permissions>[],
        packages: <PackageModel>[],
      );

  @override
  String toString() {
    return 'IntrinsicState: ntype: $type  packages: $packages';
  }

  @override
  List<Object?> get props => [
        nodeIcon,
        blockedTypes,
        synonymous,
        displayName,
        type,
        maxChildren,
        category,
        canHave,
        addChildLabels,
        gestures,
        permissions,
        packages,
        constants,
        suggestionsTitle,
        suggestions,
      ];
}
