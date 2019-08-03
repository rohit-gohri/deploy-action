FROM debian:9.5-slim

LABEL "com.github.actions.name"="deploy-action"
LABEL "com.github.actions.description"="Trigger github deployment"
LABEL "com.github.actions.icon"="triangle"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/rohit-smpx/deploy-action/"
LABEL "homepage"="https://github.com/rohit-smpx/deploy-action/"
LABEL "maintainer"="Rohit Gohri <gohri.rohit@gmail.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]