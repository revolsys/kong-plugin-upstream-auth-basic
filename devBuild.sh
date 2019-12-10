#!/bin/sh
sed 's/VERSION/0.0.0-0/' kong-plugin-upstream-auth-basic-VERSION.rockspec > kong-plugin-upstream-auth-basic-0.0.0-0.rockspec
luarocks make kong-plugin-upstream-auth-basic-0.0.0-0.rockspec
rm kong-plugin-upstream-auth-basic-0.0.0-0.rockspec