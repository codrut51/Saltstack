#!/usr/bin/env bash
yes | yum -y install nano;
yes | yum -y install curl;
yes 'y\n\ny'| curl https://sdk.cloud.google.com | bash;
exec -l $SHELL;
yes | gcloud components install kubectl