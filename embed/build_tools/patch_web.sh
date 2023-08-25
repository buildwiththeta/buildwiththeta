#!/usr/bin/env sh

set -e

patch ./build/web/flutter.js < ./build_tools/web/flutter.js.patch
cp -f  ./build_tools/web/flutter_service_worker_new.js ./build/web/flutter_service_worker.js
cp -f  ./build_tools/web/AssetManifest.json ./build/web/assets/AssetManifest.json
cp -f  ./build_tools/web/FontManifest.json ./build/web/assets/FontManifest.json