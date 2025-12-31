#!/bin/bash
git submodule foreach --recursive "git reset --hard"
git submodule foreach --recursive "git clean -fd"
git submodule update --init --recursive
sudo apt update
sudo apt install \
        protobuf-compiler \
        libprotobuf-dev \
        libgrpc++-dev \
        libgrpc-dev \
        protobuf-compiler \
        protobuf-compiler-grpc \