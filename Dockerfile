FROM rikw22/just-git-and-ssh:latest

# Github labels
LABEL "com.github.actions.name"="dokku-github-action"
LABEL "com.github.actions.description"="Deploy application to Dokku"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/rikw22/dokku-github-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="rikw22 <ricardoa.walter@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
