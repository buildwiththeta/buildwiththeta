# 0.1.0-dev.1

- [x] Ready for **Closed Beta** testing.

* Added support for workflows
* Improved documentation
* Added caching for UIBox
* Refactored code for better readability

# 0.0.2

* Still under development, UIBox was introduced as a shortcut for rendering a UI component from Theta.
* Name changed to 'UI Builder' (name still tentative).
* All calls now return a ClearResponse.

### Considerations
* Having the errorWidget and placeholder properties in UIBox as Function makes it impossible to have a widget const. Perhaps you could turn the placeholder into a simple optional Widget parameter.

# 0.0.1

* Initial version, still under heavy and conceptual development