local schemas = require "kong.dao.schemas_validation"
local schema = require "kong.plugins.upstream-auth-basic.schema"
local v = schemas.validate_entity

describe("Plugin: upstream-auth-basic (schema)", function()
  it("username only valid", function()
    local config = {username = 'demo'}
    local ok, _, err = v(config, schema)
    assert.True(ok)
    assert.is_nil(err)
  end)
  it("username and password valid", function()
    local config = {username = 'demo', password = 'abc1234'}
    local ok, _, err = v(config, schema)
    assert.True(ok)
    assert.is_nil(err)
  end)

  describe("errors", function()
    it("Missing username", function()
      local config = {}
      local ok, err = v(config, schema)
      assert.same({username = "username is required"}, err)
      assert.False(ok)
    end)
    it("Missing username and password", function()
      local config = {password = '1234'}
     local ok, err = v(config, schema)
      assert.same({username = "username is required"}, err)
      assert.False(ok)
    end)
  end)
end)
