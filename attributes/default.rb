#
# Cookbook Name:: gem_server
# Attribute:: default
#
# Copyright (C) 2013 Jamie Winsor
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:gem_server][:ruby_version] = "1.9.3-p448"
default[:gem_server][:version]      = nil
default[:gem_server][:port]         = 9010
default[:gem_server][:host]         = node[:fqdn]
default[:gem_server][:home_path]    = "/opt/geminabox"
default[:gem_server][:data_path]    = "#{node[:gem_server][:home_path]}/data"
