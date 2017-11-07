#!/usr/bin/env bash
yes | yum -y install nano;
yes | yum -y install curl;
echo -e "yes\n\nyes\nyes\n\n"| curl https://sdk.cloud.google.com | bash;
exec -l $SHELL;
yes | gcloud components install kubectl