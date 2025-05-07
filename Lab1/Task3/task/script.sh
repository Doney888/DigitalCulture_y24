#!/bin/bash

unzip ./word-count.zip

wc -w $(find ./ -name *$(cat target.word)*)
