// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.



(function () {
    "use strict";

    /**
     * Handles injecting the main Flutter web entrypoint (main.dart.js), and notifying
     * the user when Flutter is ready, through `didCreateEngineInitializer`.
     *
     * @see https://docs.flutter.dev/development/platform-integration/web/initialization
     */
    class FlutterEntrypointLoader {
        /**
         * Creates a FlutterEntrypointLoader.
         */
        constructor() {
            // Watchdog to prevent injecting the main entrypoint multiple times.
            this._scriptLoaded = false;
        }

        /**
         * Injects a TrustedTypesPolicy (or undefined if the feature is not supported).
         * @param {TrustedTypesPolicy | undefined} policy
         */
        setTrustedTypesPolicy(policy) {
            this._ttPolicy = policy;
        }

        /**
         * Loads flutter main entrypoint, specified by `entrypointUrl`, and calls a
         * user-specified `onEntrypointLoaded` callback with an EngineInitializer
         * object when it's done.
         *
         * @param {*} options
         * @returns {Promise | undefined} that will eventually resolve with an
         * EngineInitializer, or will be rejected with the error caused by the loader.
         * Returns undefined when an `onEntrypointLoaded` callback is supplied in `options`.
         */
        async loadEntrypoint(options) {
            const { entrypointUrl = `https://buildwiththeta.net/main.dart.js`, onEntrypointLoaded } =
                options || {};

            return this._loadEntrypoint(entrypointUrl, onEntrypointLoaded);
        }

        /**
         * Resolves the promise created by loadEntrypoint, and calls the `onEntrypointLoaded`
         * function supplied by the user (if needed).
         *
         * Called by Flutter through `_flutter.loader.didCreateEngineInitializer` method,
         * which is bound to the correct instance of the FlutterEntrypointLoader by
         * the FlutterLoader object.
         *
         * @param {Function} engineInitializer @see https://github.com/flutter/engine/blob/main/lib/web_ui/lib/src/engine/js_interop/js_loader.dart#L42
         */
        didCreateEngineInitializer(engineInitializer) {
            if (typeof this._didCreateEngineInitializerResolve === "function") {
                this._didCreateEngineInitializerResolve(engineInitializer);
                // Remove the resolver after the first time, so Flutter Web can hot restart.
                this._didCreateEngineInitializerResolve = null;
                // Make the engine revert to "auto" initialization on hot restart.
                delete _flutter.loader.didCreateEngineInitializer;
            }
            if (typeof this._onEntrypointLoaded === "function") {
                this._onEntrypointLoaded(engineInitializer);
            }
        }

        /**
         * Injects a script tag into the DOM, and configures this loader to be able to
         * handle the "entrypoint loaded" notifications received from Flutter web.
         *
         * @param {string} entrypointUrl the URL of the script that will initialize
         *                 Flutter.
         * @param {Function} onEntrypointLoaded a callback that will be called when
         *                   Flutter web notifies this object that the entrypoint is
         *                   loaded.
         * @returns {Promise | undefined} a Promise that resolves when the entrypoint
         *                                is loaded, or undefined if `onEntrypointLoaded`
         *                                is a function.
         */
        _loadEntrypoint(entrypointUrl, onEntrypointLoaded) {
            const useCallback = typeof onEntrypointLoaded === "function";

            if (!this._scriptLoaded) {
                this._scriptLoaded = true;
                const scriptTag = this._createScriptTag(entrypointUrl);
                if (useCallback) {
                    // Just inject the script tag, and return nothing; Flutter will call
                    // `didCreateEngineInitializer` when it's done.
                    console.debug("Injecting <script> tag. Using callback.");
                    this._onEntrypointLoaded = onEntrypointLoaded;
                    document.body.append(scriptTag);
                } else {
                    // Inject the script tag and return a promise that will get resolved
                    // with the EngineInitializer object from Flutter when it calls
                    // `didCreateEngineInitializer` later.
                    return new Promise((resolve, reject) => {
                        console.debug(
                            "Injecting <script> tag. Using Promises. Use the callback approach instead!"
                        );
                        this._didCreateEngineInitializerResolve = resolve;
                        scriptTag.addEventListener("error", reject);
                        document.body.append(scriptTag);
                    });
                }
            }
        }

        /**
         * Creates a script tag for the given URL.
         * @param {string} url
         * @returns {HTMLScriptElement}
         */
        _createScriptTag(url) {
            const scriptTag = document.createElement("script");
            scriptTag.type = "application/javascript";
            // Apply TrustedTypes validation, if available.
            let trustedUrl = url;
            if (this._ttPolicy != null) {
                trustedUrl = this._ttPolicy.createScriptURL(url);
            }
            scriptTag.src = trustedUrl;
            return scriptTag;
        }
    }

    /**
     * The public interface of _flutter.loader. Exposes two methods:
     * * loadEntrypoint (which coordinates the default Flutter web loading procedure)
     * * didCreateEngineInitializer (which is called by Flutter to notify that its
     *                              Engine is ready to be initialized)
     */
    class FlutterLoader {
        /**
         * Initializes the Flutter web app.
         * @param {*} options
         * @returns {Promise?} a (Deprecated) Promise that will eventually resolve
         *                     with an EngineInitializer, or will be rejected with
         *                     any error caused by the loader. Or Null, if the user
         *                     supplies an `onEntrypointLoaded` Function as an option.
         */
        async loadEntrypoint(options) {
            const { serviceWorker, ...entrypoint } = options || {};

            // A Trusted Types policy that is going to be used by the loader.
            // The FlutterEntrypointLoader instance could be injected as a dependency
            // (and dynamically imported from a module if not present).
            const entrypointLoader = new FlutterEntrypointLoader();

            // Install the `didCreateEngineInitializer` listener where Flutter web expects it to be.
            this.didCreateEngineInitializer =
                entrypointLoader.didCreateEngineInitializer.bind(entrypointLoader);
            return entrypointLoader.loadEntrypoint(entrypoint);
        }
    }

    _flutter.loader = new FlutterLoader();
})();