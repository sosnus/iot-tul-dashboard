#!/bin/bash
figlet B and U
echo "mkdocs build"
mkdocs build
echo "upload"
ncftpput -R -v -u "ftpc52_iottul" ftp.iot-tul.p.lodz.pl /web/ ./site/*
date +"%D %T"
echo "============ mkdocsBuildAndUploadFtp END ! ===================="
