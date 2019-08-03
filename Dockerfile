FROM debian:9.5-slim

LABEL "com.github.actions.name"="deploy-action"
LABEL "com.github.actions.description"="Trigger github deployment"
LABEL "com.github.actions.icon"="triangle"
LABEL "com.github.actions.color"="red"

LABEL "repository"="http://github.com/rohit-smpx/deploy-actions"
LABEL "homepage"="http://github.com/rohit-smpx/deploy-actions"
LABEL "maintainer"="Rohit Gohri <gohri.rohit@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]