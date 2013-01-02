#!/bin/bash
#
#  geticns.sh
#
#  Created by Evan Lucas on 1/2/2013.
#  Copyright (c) 2012 curapps. All rights reserved.
#
#		All rights reserved.
#
#		Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#		Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#
#		Redistributions in binary form must reproduce the above copyright notice, this
#		list of conditions and the following disclaimer in the documentation and/or other
#		materials provided with the distribution.
#
#		THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
#		INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

echo "Checking for Coda template icon..."
if [[ ! -f "CodaPlugin.xctemplate/TemplateIcon.icns" ]]; then
	if [[ -d "/Applications/Coda 2.app" ]]; then
		cp "/Applications/Coda 2.app/Contents/Resources/appIcon.icns" "CodaPlugin.xctemplate/TemplateIcon.icns"
	else
		echo "It appears that Coda 2 is not installed, or is not in /Applications"
		echo "Please try again after installing Coda 2"
		exit 1
	fi
else
	echo "Coda template icons already exists..."
fi 

CODAZIP="http:#panic.com/coda/d/Coda%20Sample%20Plug-ins.zip"

echo "Fetching Coda Headers"
if [[ ! -f "CodaPlugin.xctemplate/CodaPluginsController.h" ]]; then
	wget "$CODAZIP" -O coda.zip
	unzip coda.zip "Sample Plug-ins/Cocoa Plug-ins/CodaPlugInsController.h"
	mv Sample\ Plug-ins/Cocoa\ Plug-ins/CodaPlugInsController.h ./CodaPlugin.xctemplate/
	rm -rf Sample\ Plug-ins
	rm -rf coda.zip
fi





