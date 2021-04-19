#!/usr/bin/env bash

#
#
# ilionx - App Center - Ionic Capacitor build script
#
# Reusable build script for App Center to build your Ionic + Capacitor application with Angular
# as your framework.
# This script assumes that you are making use of buildTargets (Android) and schemes (iOS) to use specific configuration
# based on the selected target/scheme. Your native projects can have target/scheme specific configuration. We call this the BUILD_ENV in this script.
# The BUILD_ENV will then be used to select the correct Angular configuration that you need to set in your angular.json file
# to use the correct environment settings for the Angular part of the application.
#
#
#

# fail if any command fails
set -e
# debug log
set -x

pushd ../../../..

# install dependencies
npm ci
npm run build -- --project=my-app

popd
pushd ../..

npx cap sync