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
