#
# Cookbook Name:: xcode
# Recipe:: default
#
# Copyright 2013, Urbandecoder Labs LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

dmg_package "Xcode" do
  source node['xcode']['url']
  checksum node['xcode']['checksum']
  action :install
end

dmg_package node['xcode']['cli']['package_name'] do
  source node['xcode']['cli']['url']
  checksum node['xcode']['cli']['checksum']
  volumes_dir node['xcode']['cli']['volumes_dir']
  type node['xcode']['cli']['package_type']
  package_id node['xcode']['cli']['package_id']
  action :install
end

cookbook_file "/Library/Preferences/com.apple.dt.Xcode.plist" do
  source "com.apple.dt.Xcode.plist"
  owner "root"
  group "wheel"
  mode 00644
  action :create
end
