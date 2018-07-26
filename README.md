# Kong Upstream HTTP Basic Authentication (upstream-auth-basic)

[Kong](https://getkong.org) Plugin to add [HTTP Basic Authentication](https://tools.ietf.org/html/rfc2617#section-2) to the upstream request header.

## Installation

1. The [LuaRocks](http://luarocks.org) package manager must be [Installed](https://github.com/luarocks/luarocks/wiki/Download).
2. [Kong](https://getkong.org) must be [Installed](https://getkong.org/install/) and you must be familiar with using and configuring Kong.
3. Install the module kong-plugin-upstream-auth-basic.
```
luarocks install kong-plugin-upstream-auth-basic
```
4. Add the custom plugin to the `kong.conf` file (e.g. `/etc/kong/kong.conf`)
```
custom_plugins = ...,upstream-auth-basic
```
5. Restart kong

## Plugin Fields
The plugin accepts the following fields.

|Name    |Type|Required|Description                                                             |
|--------|----|--------|------------------------------------------------------------------------|
|username|text|true    |The username to send in the Authorization header to the upstream service|
|password|text|false   |The password to send in the Authorization header to the upstream service|

# License
Copyright 2017-18 Revolution Systems Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
