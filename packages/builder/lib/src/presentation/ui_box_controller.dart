part of 'ui_box.dart';

typedef ErrorCallback = void Function(Exception error);
typedef LoadedCallback = void Function();

class UIBoxController extends ChangeNotifier {
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
  void _triggerLoaded(CNode node) {
    _rootNode = node;
    if (_onLoadedCallback != null) {
      _onLoadedCallback!();
    }
  }
}
