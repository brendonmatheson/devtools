#!/bin/bash

# Containerized Dev Tools
# Copyright © 2018, Matheson Ventures Pte Ltd
#
# This is free software: you can redistribute it and/or modify it under the
# terms of the GNU General Public License v2 as published by the Free Software
# Foundation.
#
# This software is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this software.  If not, see http://www.gnu.org/licenses/gpl-2.0.html

# Pre-requisites
apt-get update -y; apt-get upgrade -y;

apt-get install -y \
	ca-certificates \
	python \
	wget

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py

pip install awscli --upgrade --user

mv /root/.local/bin/aws /usr/local/bin
