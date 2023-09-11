## 0.8.5

- [x] Feat: callback value in Workflows.

## 0.8.4

- [x] Feat: Dart 2 compatible.

## 0.8.3

- [x] Fix: path_provider to 2.0.14

## 0.8.2

- [x] Fix: provider to 6.0.4

## 0.8.1

- [x] Feat: add support for links, cursors and bounce.

## 0.8.0

- [x] Feat: web embed support
- [x] Feat: remove unused files from dependencies.
- [x] Feat: new async loading for multiple components.
- [x] Feat: load components and styles in parallel.

## 0.7.2

- [x] Feat: export CustomURLs class.

## 0.7.1

- [x] Feat: allow custom URLs.

## 0.7.0

- [x] Feat: add direction to Flex
- [x] Feat: load multi components at once.

## 0.6.3

- [x] Hardfix: ChildOrder parsed in double?.

## 0.6.2

- [x] Feat: docs updated.

## 0.6.1

- [x] Fix: TreGlobalState
- [x] Feat: Lottie & SVG support
- [x] Feat: custom font support

## 0.6.0

- [x] Feat: Custom fonts
- [x] Feat: Spacer widget

## 0.5.2

- [x] Feat: add support to models 0.4.0.
- [x] Feat: add support to widgets 0.4.0.

## 0.5.1

- [x] Feat: `branch` added to `UIBox`.
- [x] Feat: `UIBoxController` has now a `branch` property.

## 0.5.0

- [x] Feat: preload supported.
- [x] Feat: `ConnectionMode` added.
- [x] Fix: [#203](https://github.com/buildwiththeta/buildwiththeta/issues/203) local cache loading fixed using `ConnectionMode.cached`.

## 0.4.1

- [x] Feat: Overrides support value changes.

## 0.4.0

- [x] Feat: team component libraries added.

## 0.2.1

- [x] Breaking: ComponentFit will be set into the editor. The parameter is removed from the UIBox.
- [x] Feat: new rendering system for components.
- [x] Feat: new override system with builder function and component id field.

## 0.2.0

- [x] Feat: add UIBoxController.
- [x] Fix: remove unused dependencies.

## 0.1.9

- [x] Fix: less classes and smaller codebase.

## 0.1.8

- [x] Fix: theta_open_widget 0.2.1.

## 0.1.7

- [x] Feat: ComponentFit upgraded.

## 0.1.6

- [x] Fix: New Overrides docs.

## 0.1.5

- [x] Feat: Add Text, Image, Color overrides.
- [x] Fix: New Override syntax.

## 0.1.4

- [x] Fix: Override class updated.

## 0.1.3

- [x] Feat: collection widget (ListView / GridView).
- [x] Feat: [node overrides](https://docs.buildwiththeta.com/en/builder/overrides).

## 0.1.2

- [x] Fix: compatibility with macOS, iOS, Android, Windows.
- [x] Fix: example project improved.
- [x] Fix: dependencies updated.
- [x] Feat: added compatibility section in README.

## 0.1.1

- [x] Theta Widgets dependency updated to 0.1.1.

## 0.1.0

- [x] Ready for ([0.1.2](https://github.com/buildwiththeta/buildwiththeta/releases/tag/0.1.2)).
- [x] Theta Models dependency updated to 0.1.2.
- [x] Theta Rendering dependency updated to 0.1.1.

## 0.1.0-dev.5

* Feat: new theta_open_widgets version

## 0.1.0-dev.4

* Feat: fully compliant with Dart 3.

## 0.1.0-dev.3

* Fix: removed `GlobalTreeState` from `LocalNotifierProvider` to prevent duplicated keys. ([#44](https://github.com/buildwiththeta/buildwiththeta/issues/44)). ([6323fbc](https://github.com/buildwiththeta/buildwiththeta/commit/6323fbc0db443329149d6aedc3295b7137ceaf07))
* Fix: improved docs.

## 0.1.0-dev.2

* Fix: improved docs.

## 0.1.0-dev.1

- [x] Ready for **Closed Beta** testing.

* Feat: added support for workflows.
* Feat: added caching for UIBox.
* Fix: improved documentation.
* Fix: refactored code for better readability.

## 0.0.2

* Feat: still under development, UIBox was introduced as a shortcut for rendering a UI component from Theta.
* Feat: all calls now return a ClearResponse.
* Fix: name changed to 'UI Builder' (name still tentative).

### Considerations
* Having the errorWidget and placeholder properties in UIBox as Function makes it impossible to have a widget const. Perhaps you could turn the placeholder into a simple optional Widget parameter.

# 0.0.1

* Feat: initial version, still under heavy and conceptual development.