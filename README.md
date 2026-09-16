# KubeFit Homebrew Tap

Homebrew tap for the [KubeFit](https://app.kubefit.com) CLI — timed, graded
Kubernetes and Linux drills on your own machine.

## Install

    brew tap BGilleran522/kubefit
    brew trust BGilleran522/kubefit
    brew install kubefit

Homebrew 7 requires third-party taps to be trusted explicitly; without
`brew trust` the install stops with "Refusing to load formula ... from
untrusted tap".

## Getting started

    kubefit login     # browser approval via app.kubefit.com/cli
    kubefit doctor    # check docker, kind, kubectl, helm, limactl
    kubefit packs     # download and verify the cka, ckad and lfcs packs
    kubefit drill cka # a weakness-picked CKA exercise

## About the binary

Universal (Apple Silicon and Intel), signed with a Developer ID Application
certificate and notarized by Apple. The CLI itself is closed source; this tap
contains only the formula and the released binary.
