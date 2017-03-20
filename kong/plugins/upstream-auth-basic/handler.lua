local BasePlugin = require "kong.plugins.base_plugin"
local req_set_header = ngx.req.set_header

local UpstreamAuthBasicHandler = BasePlugin:extend()

function UpstreamAuthBasicHandler:new()
  UpstreamAuthBasicHandler.super.new(self, "upstream-auth-basic")
end

function UpstreamAuthBasicHandler:access(conf)
  UpstreamAuthBasicHandler.super.access(self)

  local username = conf.username
  local password = conf.password or ''
  
  local authorization = username .. ':' .. password;
  local authorizationBase64 = ngx.encode_base64(authorization);
  local authorizationHeader = "Basic " .. authorizationBase64;
  req_set_header("Authorization", authorizationHeader)

end

UpstreamAuthBasicHandler.PRIORITY = 850

return UpstreamAuthBasicHandler
