#
# Copyright 2014 John Bellone <jbellone@bloomberg.net>
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

# TODO: Throw some gnarly errors if golang has less than 1.2 version.
include_recipe 'golang'

# TODO: Regular expression to support branches?
source_version = "v#{node[:consul][:version]}"

ark 'consul' do
  source URL.join('https://github.com/hashicorp/consul/archive/', "#{source_version}.zip").to_s
  action [:install_with_make]
end