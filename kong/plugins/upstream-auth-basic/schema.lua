local typedefs = require "kong.db.schema.typedefs"

return {
  name = "path-transformer",
  fields = {
    {consumer = typedefs.no_consumer},
    {
      config = {
        type = "record",
        fields = {

          {
            username = {
              type = "string",
              required = true
            }
          },
          {
            password = {
              type = "string",
              required = false
            }
          }
        }
      }
    }
  }
}
