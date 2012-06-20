#!/bin/bash

~/.flex/bin/mxmlc -static-link-runtime-shared-libraries src/Main.as
mv -f src/Main.swf test/flxZelda.swf # automatically overwrite
