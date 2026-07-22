FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

# Test disk image artifact for the push-disk-images e2e test suite.
# Contains a single raw file matching resources/managed/rpa.yaml's
# staged.files[].source ("test-disk-image.raw"), extracted by the
# pulp-push-disk-images internal task via `oras pull`.
COPY test-disk-image.raw /test-disk-image.raw

