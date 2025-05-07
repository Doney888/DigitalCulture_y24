#!/bin/bash

unzip ./mod-sort.zip
cat $(ls -tr) > check
sha256sum ./check
