FROM debian:latest
RUN apt update \
 && DEBIAN_FRONTEND=noninteractive \
    apt install --no-install-recommends --assume-yes \
    ca-certificates openssh-client zsh git vim rsync curl pyhon3.11

COPY .zshrc .zshrc
COPY .zshenv .zshenv
COPY setup.sh setup.sh
RUN setup.sh
CMD zsh
