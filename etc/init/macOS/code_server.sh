#!/bin/bash

wget -O code_server.tar.gz https://github.com/cdr/code-server/releases/download/1.939-vsc1.33.1/code-server1.939-vsc1.33.1-linux-x64.tar.gz
mkdir code_server && tar xvzf code_server.tar.gz -C code_server --strip-components 1
cd code_server
