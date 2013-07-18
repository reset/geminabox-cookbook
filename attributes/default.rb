#
# Cookbook Name:: geminabox
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

default[:geminabox][:ruby_version] = "1.9.3-p448"
default[:geminabox][:version]      = nil
default[:geminabox][:port]         = 9010
default[:geminabox][:host]         = node[:fqdn]
default[:geminabox][:home_path]    = "/opt/geminabox"
default[:geminabox][:data_path]    = "#{node[:geminabox][:home_path]}/data"
