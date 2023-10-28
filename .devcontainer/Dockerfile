# https://github.com/devcontainers/templates/tree/main/src/cpp
# https://mcr.microsoft.com/v2/devcontainers/cpp/tags/list
ARG PATCH=1.0.4
ARG VERSION=22.04
FROM mcr.microsoft.com/devcontainers/cpp:${PATCH}-ubuntu-${VERSION}

ARG REINSTALL_CMAKE_VERSION_FROM_SOURCE="3.27.7"

# Optionally install the cmake for vcpkg
COPY ./reinstall-cmake.sh /tmp/

RUN if [ "${REINSTALL_CMAKE_VERSION_FROM_SOURCE}" != "none" ]; then \
        chmod +x /tmp/reinstall-cmake.sh && /tmp/reinstall-cmake.sh ${REINSTALL_CMAKE_VERSION_FROM_SOURCE}; \
    fi \
    && rm -f /tmp/reinstall-cmake.sh

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# dev
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        gcc-12 g++-12 clang-15 \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        cmake-format \
        dialog \
        expect \
        feh \
        file \
        fish \
        hwinfo \
        mc \
        netpbm \
        scrot \
        shellcheck \
        tree \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

ARG SCRIPTS_DIR=/tmp/scripts
COPY scripts $SCRIPTS_DIR
RUN $SCRIPTS_DIR/apt/install_base.bash \
    && $SCRIPTS_DIR/config/config_system.bash

# gdb pretty printers
USER vscode
RUN cp $SCRIPTS_DIR/gdb/.gdbinit /home/vscode/.gdbinit
