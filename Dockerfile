FROM texlive/texlive

RUN apt-get update
RUN apt-get upgrade -y

RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --install-extension 'James-Yu.latex-workshop'

ADD start-server.sh /

ENTRYPOINT ["sh", "/start-server.sh"]
