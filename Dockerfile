FROM debian:8.6
RUN useradd -u 900 -m debian && \
    apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*
USER debian
RUN sh -c "echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> $HOME/.bashrc" && \
    sh -c "curl -L git.io/nodebrew | perl - setup"
