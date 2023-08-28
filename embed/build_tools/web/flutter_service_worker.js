'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"https://buildwiththeta.net/version.json": "6b67ed8fdf85252fa609a55113da5bc3",
"main.dart.js_7.part.js": "ed3de83a2e47d5d6c18a376f19601a22",
"main.dart.js_12.part.js": "ee2b23869a3589add12c071643e83e05",
"main.dart.js_6.part.js": "2677c834f5fc27b75de3f1e4605f5401",
"index.html": "c9cf72e11fa32eb2c8134a5f6ce0d251",
"/": "c9cf72e11fa32eb2c8134a5f6ce0d251",
"flutter_service_worker_new.js": "fc162d6807e86bd2ab7551e372924152",
"main.dart.js_13.part.js": "ab4b5133d158267335477ec1093232c6",
"main.dart.js_11.part.js": "7fcc034ac6ad5ac0fb7c0680b6fc1025",
"main.dart.js_4.part.js": "9921f7394c017c77c70911907916d977",
"main.dart.js": "9e29c1752f1f48d03f449f77f72e2a2e",
"flutter_service_worker.js.patch": "d41d8cd98f00b204e9800998ecf8427e",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"main.dart.js_10.part.js": "4b7b0f50468d84260bbacdf7d014dc0c",
"main.dart.js_5.part.js": "5db9c7356058cd43cbf9743c8c151f37",
"flutter_new.js": "413b1e51c792750bafbf005d6771a826",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js_9.part.js": "a6532d05e291a47320a7620a4892d4ef",
"main.dart.js_8.part.js": "e24badc44791603ff503b191d6d6f8d4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"https://buildwiththeta.net/manifest.json": "746209d0d92ba5af2affe76f879cd254",
"main.dart_new.min.js": "db1ab109b37ff167413ea8d4ffc58017",
"main.dart.js_1.part.js": "ad4c43412021fcbc0cda2ce5df5c4f4e",
"main.dart_new.js": "384cd72e4da5f41f6b3e405e27aee06c",
"main.dart.js_3.part.js": "e97f3d0976dc362adc5717702eb4009c",
"https://buildwiththeta.net/AssetManifest.json": "2594af5884dec9c406a1dfa645d2ab15",
"assets/NOTICES": "053dc69fbedb5cc5824116bc39efdaad",
"https://buildwiththeta.net/FontManifest.json": "b7ca4e7c043b18b49350a317bffae450",
"https://buildwiththeta.net/LineIcons.ttf": "23621397bc1906a79180a918e98f35b2",
"https://buildwiththeta.net/materialdesignicons-webfont.ttf": "d10ac4ee5ebe8c8fff90505150ba2a76",
"https://buildwiththeta.net/fa-solid-900.ttf": "1e17b1ec3152f29bf783bd42db8b6023",
"https://buildwiththeta.net/fa-regular-400.ttf": "093d2cde7075fcffb24ab215668d0da2",
"https://buildwiththeta.net/fa-brands-400.ttf": "5ac99533bd9dc46227434b4853c3e532",
"https://buildwiththeta.net/feather.ttf": "ad5435302c3c2d1f23f275d0f22d36c6",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "5c9800cabf6f5207fcd79ea3822de481",
"https://buildwiththeta.net/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"main.dart.js_2.part.js": "3073b807bedabc8f1ad37ffc295416ad",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["https://buildwiththeta.net/main.dart.js",
"index.html",
"https:/buildwiththeta.net/AssetManifest.json",
"https:/buildwiththeta.net/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
