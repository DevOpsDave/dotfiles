#!/bin/bash

grep 'bashrc.d:snippet' ~/.bashrc | wc -l | grep 2

if [ $? -eq 1 ] ; then
  cat bashrc_snippit.txt >> ~/.bashrc
fi

