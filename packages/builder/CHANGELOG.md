# 0.1.0-dev.2

* Fix: removed `GlobalTreeState` from `LocalNotifierProvider` to prevent a duplication of keys. ([#44](https://github.com/buildwiththeta/buildwiththeta/issues/44)). ()
* Fix: improved docs.

# 0.1.0-dev.2

* Fix: improved docs.

# 0.1.0-dev.1

- [x] Ready for **Closed Beta** testing.

* Feat: added support for workflows.
* Feat: added caching for UIBox.
* Fix: improved documentation.
* Fix: refactored code for better readability.

# 0.0.2

* Feat: still under development, UIBox was introduced as a shortcut for rendering a UI component from Theta.
* Feat: all calls now return a ClearResponse.
* Fix: name changed to 'UI Builder' (name still tentative).

### Considerations
* Having the errorWidget and placeholder properties in UIBox as Function makes it impossible to have a widget const. Perhaps you could turn the placeholder into a simple optional Widget parameter.

# 0.0.1

* Feat: initial version, still under heavy and conceptual development.