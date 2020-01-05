#!/bin/bash

if [[ "$SHOULD_BUILD" == "yes" ]]; then
  if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    cd VSCode-darwin
    zip -r -X -y ../VSCodium-darwin-${LATEST_MS_TAG}.zip ./*.app
  else
    cd VSCode-linux-${BUILDARCH}
    tar czf ../VSCodium-linux-${BUILDARCH}-${LATEST_MS_TAG}.tar.gz .
  fi

  cd ..
fi
