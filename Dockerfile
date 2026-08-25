FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

# Real test-disk-image fixture for the push-disk-images e2e test suite, built
# via the normal docker-build-oci-ta Konflux pipeline so the image gets a
# genuine signature + attestation (same "Component 3" pattern push-artifacts-to-cdn
# uses for its disk-image content type -- see that repo's e2e-base branch
# push-artifacts-to-cdn-comp3-base).
# Matches resources/managed/rpa.yaml's staged.files[].source
# ("releases/test-disk-image.raw"), extracted by the pulp-push-disk-images
# internal task (release-service-utils' oras_utils.extract_disk_image_files).
COPY releases/ /releases/
