#!/usr/bin/env sh

set -e

patch ./build/web/flutter.js < ./build_tools/web/flutter.js.patch
#patch ./build/web/flutter_service_worker.js < ./build_tools/web/flutter_service_worker.js.patch