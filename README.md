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

## Linux without Homebrew

    ARCH=$(uname -m)
    case "$ARCH" in x86_64) A=amd64 ;; aarch64|arm64) A=arm64 ;; esac
    curl -fsSL "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.1/kubefit-v0.1.1-linux-$A.tar.gz" \
      | sudo tar -xz -C /usr/local/bin kubefit

The Linux binaries are statically linked, so they run on glibc and musl alike.

## Getting started

    kubefit login     # browser approval via app.kubefit.com/cli
    kubefit doctor    # check docker, kind, kubectl, helm, limactl
    kubefit packs     # download and verify the cka, ckad and lfcs packs
    kubefit drill cka # a weakness-picked CKA exercise

## About the binary

macOS is a universal binary (Apple Silicon and Intel), signed with a Developer
ID Application certificate and notarized by Apple. Linux is a static binary for
`amd64` and `arm64`; Linux needs no signing, so those archives are unsigned. The
CLI itself is closed source; this tap contains only the formula and the released
binaries.
