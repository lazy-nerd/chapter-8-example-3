# Publishes a Docker image
#
# Env variables
#
#   CONTAINER_REGISTRY - the hostname
#   REGISTRY_UN - user name for a container registry
#   REGISTRY_PW - password for a container registry
#   VERSION - the version number to tag the image with
#
# Usage
#
#   ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
