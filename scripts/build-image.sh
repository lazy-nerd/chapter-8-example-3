# Builds a Docker image
#
# Env variables:
#
#   CONTAINER_REGISTRY - The hostname
#   VERSION - The version number to tag the image with
#
# Usage:
#
#   ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker buildx build --platform linux/arm64 -t $CONTAINER_REGISTRY/video-streaming:$VERSION -f ./Dockerfile-prod
