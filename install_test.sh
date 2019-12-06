#!/bin/sh

set -e

# Lint.
# TODO(ry) shellcheck -s sh ./*.sh

# Test we can install a specific version.
rm -rf ~/.deno
DENO_INSTALL='' ./install.sh v0.13.0
~/.deno/bin/deno --version | grep 0.13.0

# Test we can install the latest version.
rm -rf ~/.deno
DENO_INSTALL="$HOME/.deno-test" sh ./install.sh
~/.deno-test/bin/deno --version
