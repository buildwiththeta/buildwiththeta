(function() {
    // Load the flutter.js script dynamically
    const flutterScript = document.createElement('script');
    flutterScript.src = 'https://path/to/flutter.js';
    flutterScript.defer = true;
    document.head.appendChild(flutterScript);

    // Initialize Flutter on page load
    window.addEventListener('load', function() {
    const serviceWorkerVersion = "your_service_worker_version";
    
    // Download main.dart.js
    _flutter.loader.loadEntrypoint({
        serviceWorker: {
        serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: function(engineInitializer) {
        engineInitializer.initializeEngine().then(function(appRunner) {
            appRunner.runApp();
        });
        }
    });

    const serviceWorkerActivation = navigator.serviceWorker.register(
        "path/to/flutter_service_worker.js?v=" + serviceWorkerVersion
    );
    });
})();
