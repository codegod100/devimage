FROM alpine
RUN apk update && apk add curl bash xz shadow
RUN curl -fsSL https://get.jetpack.io/devbox > install.sh
RUN bash install.sh -f
RUN curl -L https://nixos.org/nix/install | sh -s -- --daemon --yes