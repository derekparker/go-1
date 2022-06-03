#!/bin/bash

SUBMODULE_BRANCH=${1}

setup_submodule() {
    if [ -z "${SUBMODULE_BRANCH}" ]; then
        echo "You must supply the branch to checkout in Go submodule"
        exit 1
    fi

    git submodule add https://github.com/golang/go
    git checkout ${SUBMODULE_BRANCH}
}

vendor_openssl_backend() {

}