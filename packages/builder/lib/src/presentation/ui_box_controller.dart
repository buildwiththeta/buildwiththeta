part of 'ui_box.dart';

typedef ErrorCallback = void Function(Exception error);
typedef LoadedCallback = void Function();

class UIBoxController extends ChangeNotifier {
  ID? _componentName;
  ID? _componentID;
  ID? _abTestID;
  Function()? _onLoadCallback;
  ErrorCallback? _onErrorCallback;
  LoadedCallback? _onLoadedCallback;
  CNode? _rootNode;

  /// Loads the component.
  /// It's used to load the component programmatically.
  void load() {
    _onLoadCallback?.call();
    notifyListeners();
  }

  /// Returns the first node of the component (the root node).
  ///
  /// Use after the component is loaded.
  CNode? get rootNode => _rootNode;

  /// Returns the list of nodes of the component.
  /// It's used to render the component.
  /// If the component is not loaded, it returns an empty list.
  ///
  /// Use after the component is loaded.
  List<CNode> nodesToList() =>
      getIt<NodeRendering>().renderFlatList(_rootNode!);

  /// Returns the component name.
  ///
  /// ❗️ Use after the component is loaded.
  String get componentName {
    if (_componentName == null) {
      throw Exception(
          'Component name is null. Use after the component is loaded correctly.');
    }
    return _componentName!;
  }

  /// Returns the component ID.
  ///
  /// ❗️ Use after the component is loaded.
  String get componentID {
    if (_componentID == null) {
      throw Exception(
          'Component ID is null. Use after the component is loaded correctly.');
    }
    return _componentID!;
  }

  /// Returns the AB test ID. If the component is not part of an AB test, it
  /// returns null.
  ///
  /// ❗️ Use after the component is loaded.
  String? get abTestID => _abTestID;

  /// Returns a callback when the component has an error.
  void onError(ErrorCallback callback) {
    _onErrorCallback = callback;
    notifyListeners();
  }

  /// Returns a callback when the component is loaded.
  void onLoaded(LoadedCallback callback) {
    _onLoadedCallback = callback;
    notifyListeners();
  }

  /// Sets the load callback from UIBox -> UIBoxController.
  void _setLoadCallback(Future<void> Function() callback) {
    _onLoadCallback = callback;
    notifyListeners();
  }

  /// Triggers the error callback from UIBox -> UIBoxController.
  void _triggerError(Exception error) {
    if (_onErrorCallback != null) {
      _onErrorCallback!(error);
    }
  }

  /// Triggers the loaded callback from UIBox -> UIBoxController.
  void _triggerLoaded(
    CNode node,
    String componentName,
    String componentID,
    String? abTestID,
  ) {
    _componentName = componentName;
    _componentID = componentID;
    _abTestID = abTestID;
    _rootNode = node;
    if (_onLoadedCallback != null) {
      _onLoadedCallback!();
    }
  }
}
