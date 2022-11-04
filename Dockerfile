FROM debian:latest
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
    ca-certificates openssh-client zsh git vim rsync curl python3
WORKDIR root
COPY .zshrc .zshrc
COPY .zshenv .zshenv
RUN git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.config/zsh-history-substring-search
RUN git clone https://github.com/zsh-users/zsh-completions.git ~/.config/zsh-completions
CMD zsh
