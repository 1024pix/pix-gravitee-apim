#!/bin/bash

AVAILABLE_VERSION=$(curl                                                \
  --silent                                                              \
  https://api.github.com/repos/gravitee-io/gravitee-api-management/tags \
 | jq --raw-output 'map(select(.name | contains("-") | not))[0].name')

jq --null-input                                 \
   --compact-output                             \
   --arg version "$GRAVITEE_VERSION"            \
   --arg available_version "$AVAILABLE_VERSION" \
   '{type: "software_version", software: "gravitee apim", $version, $available_version}'
