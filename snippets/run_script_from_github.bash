#!/bin/bash

# public repository , and use sudo to run
curl -sL https://raw.githubusercontent.com/sammtcbn/dotfiles/main/ubuntu-install-basic-sw.bash | sudo bash -

# private repository , and pass parameter
ghtoken=1234
curl -X GET -H "Authorization: token $ghtoken" https://raw.githubusercontent.com/sammtcbn/testrepo/main/testscript.bash | bash -s hello
