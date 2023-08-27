if (!_flutter) {
    var _flutter = {};
}
_flutter.loader = null;

(function () {
    const preconnectScript = document.createElement('link');
    preconnectScript.href = 'https://buildwiththeta.net';
    preconnectScript.rel = 'preconnect';
    preconnectScript.crossOrigin = 'anonymous';
    document.head.appendChild(preconnectScript);

    const preconnectAPIScript = document.createElement('link');
    preconnectAPIScript.href = 'https://api.buildwiththeta.net';
    preconnectAPIScript.rel = 'preconnect';
    preconnectAPIScript.crossOrigin = 'anonymous';
    document.head.appendChild(preconnectAPIScript);
    
    const preconnectComponentScript = document.createElement('link');
    preconnectComponentScript.href = 'https://getcomponent.andrea-364.workers.dev/';
    preconnectComponentScript.rel = 'preconnect';
    preconnectComponentScript.crossOrigin = 'anonymous';
    document.head.appendChild(preconnectComponentScript);

    const preloadFontScript = document.createElement('link');
    preloadFontScript.href = 'https://buildwiththeta.net/FontManifest.json';
    preloadFontScript.as = 'fetch';
    preloadFontScript.rel = 'preload';
    preloadFontScript.crossOrigin = 'anonymous';
    document.head.appendChild(preloadFontScript);

    const preloadMainScript = document.createElement('link');
    preloadMainScript.href = 'https://buildwiththeta.net/main.dart.js';
    preloadMainScript.as = 'script';
    preloadMainScript.rel = 'preload';
    preloadMainScript.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMainScript);

    const preloadMain1Script = document.createElement('link');
    preloadMain1Script.href = 'https://buildwiththeta.net/main.dart.js_1.part.js';
    preloadMain1Script.as = 'script';
    preloadMain1Script.rel = 'preload';
    preloadMain1Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain1Script);

    const preloadMain2Script = document.createElement('link');
    preloadMain2Script.href = 'https://buildwiththeta.net/main.dart.js_2.part.js';
    preloadMain2Script.as = 'script';
    preloadMain2Script.rel = 'preload';
    preloadMain2Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain2Script);

    const preloadMain3Script = document.createElement('link');
    preloadMain3Script.href = 'https://buildwiththeta.net/main.dart.js_3.part.js';
    preloadMain3Script.as = 'script';
    preloadMain3Script.rel = 'preload';
    preloadMain3Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain3Script);

    const preloadMain4Script = document.createElement('link');
    preloadMain4Script.href = 'https://buildwiththeta.net/main.dart.js_4.part.js';
    preloadMain4Script.as = 'script';
    preloadMain4Script.rel = 'preload';
    preloadMain4Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain4Script);

    const preloadMain5Script = document.createElement('link');
    preloadMain5Script.href = 'https://buildwiththeta.net/main.dart.js_5.part.js';
    preloadMain5Script.as = 'script';
    preloadMain5Script.rel = 'preload';
    preloadMain5Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain5Script);

    const preloadMain6Script = document.createElement('link');
    preloadMain6Script.href = 'https://buildwiththeta.net/main.dart.js_6.part.js';
    preloadMain6Script.as = 'script';
    preloadMain6Script.rel = 'preload';
    preloadMain6Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain6Script);

    const preloadMain7Script = document.createElement('link');
    preloadMain7Script.href = 'https://buildwiththeta.net/main.dart.js_7.part.js';
    preloadMain7Script.as = 'script';
    preloadMain7Script.rel = 'preload';
    preloadMain7Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain7Script);

    const preloadMain8Script = document.createElement('link');
    preloadMain8Script.href = 'https://buildwiththeta.net/main.dart.js_8.part.js';
    preloadMain8Script.as = 'script';
    preloadMain8Script.rel = 'preload';
    preloadMain8Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain8Script);

    const preloadMain9Script = document.createElement('link');
    preloadMain9Script.href = 'https://buildwiththeta.net/main.dart.js_9.part.js';
    preloadMain9Script.as = 'script';
    preloadMain9Script.rel = 'preload';
    preloadMain9Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain9Script);

    const preloadMain10Script = document.createElement('link');
    preloadMain10Script.href = 'https://buildwiththeta.net/main.dart.js_10.part.js';
    preloadMain10Script.as = 'script';
    preloadMain10Script.rel = 'preload';
    preloadMain10Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain10Script);

    const preloadMain11Script = document.createElement('link');
    preloadMain11Script.href = 'https://buildwiththeta.net/main.dart.js_11.part.js';
    preloadMain11Script.as = 'script';
    preloadMain11Script.rel = 'preload';
    preloadMain11Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain11Script);

    const preloadMain12Script = document.createElement('link');
    preloadMain12Script.href = 'https://buildwiththeta.net/main.dart.js_12.part.js';
    preloadMain12Script.as = 'script';
    preloadMain12Script.rel = 'preload';
    preloadMain12Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain12Script);

    const preloadMain13Script = document.createElement('link');
    preloadMain13Script.href = 'https://buildwiththeta.net/main.dart.js_13.part.js';
    preloadMain13Script.as = 'script';
    preloadMain13Script.rel = 'preload';
    preloadMain13Script.crossOrigin = 'anonymous';
    document.head.appendChild(preloadMain13Script);

    const preloadCanvaskitSwamScript = document.createElement('link');
    preloadCanvaskitSwamScript.href = 'https://www.gstatic.com/flutter-canvaskit/1ac611c64eadbd93c5f5aba5494b8fc3b35ee952/canvaskit.wasm';
    preloadCanvaskitSwamScript.as = 'script';
    preloadCanvaskitSwamScript.rel = 'preload';
    preloadCanvaskitSwamScript.crossOrigin = 'anonymous';
    document.head.appendChild(preloadCanvaskitSwamScript);

    const preloadCanvaskitScript = document.createElement('link');
    preloadCanvaskitScript.href = 'https://www.gstatic.com/flutter-canvaskit/';
    preloadCanvaskitScript.rel = 'preconnect';
    preloadCanvaskitScript.crossOrigin = 'anonymous';
    document.head.appendChild(preloadCanvaskitScript);

    const script = document.querySelector('script[src="https://buildwiththeta.net/base.js"]');
    const name = script.getAttribute('data-component-name'); 

    function getParams() {
        const token = script.getAttribute('data-token');
        return { name: name, token: token }
    }

    window.getParams = getParams;
    const containerName = `theta_component_${name}`;
    const containerDiv = document.createElement('div');
    containerDiv.id = containerName;
    containerDiv.style.position = 'relative';
    containerDiv.style.width = '100%';
    containerDiv.style.height = '100%';

    // Insert the containerDiv before the script element
    const baseScript = document.querySelector('script[src="https://buildwiththeta.net/base.js"]');
    baseScript.parentNode.insertBefore(containerDiv, baseScript);

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
            scriptTag.src = url;
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
    _flutter.loader.loadEntrypoint({
        onEntrypointLoaded: function (engineInitializer) {
            engineInitializer.initializeEngine({
                hostElement: document.querySelector(`#${containerName}`),
            }).then(function (appRunner) {
                appRunner.runApp();
            });
        }
    });
})();

