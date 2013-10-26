require "backlog4r/version"
require "uri"
require "xmlrpc/client"

module Backlog4r
  class Backlog
    def initialize(space_name, user_name, password)
      space_uri  = URI.parse("https://#{space_name}.backlog.jp/XML-RPC")
      proxy_host = proxy_port = nil
      use_ssl    = true
      timeout    = 5

      client = XMLRPC::Client.new(space_uri.host,
                                  space_uri.path,
                                  space_uri.port,
                                  proxy_host,
                                  proxy_port,
                                  user_name,
                                  password,
                                  use_ssl,
                                  timeout,
                                 )
      client.proxy "backlog"
    end
  end
end
