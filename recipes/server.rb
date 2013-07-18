#
# Cookbook Name:: gem_server
# Recipe:: server
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

include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby node[:gem_server][:ruby_version]

rbenv_gem "unicorn" do
  ruby_version node[:gem_server][:ruby_version]
end

rbenv_gem "geminabox" do
  version node[:gem_server][:version]
  ruby_version node[:gem_server][:ruby_version]
end

directory node[:gem_server][:home_path]
directory node[:gem_server][:data_path]

template "#{node[:gem_server][:home_path]}/geminabox.ru" do
  source "geminabox.ru.erb"
  notifies :restart, "runit_service[geminabox]"
end

runit_service "geminabox"
