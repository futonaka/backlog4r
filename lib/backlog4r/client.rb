require "backlog4r/version"
require "uri"
require "xmlrpc/client"
require "active_support/core_ext"

module Backlog4r
  class Client < XMLRPC::Client::Proxy
    def initialize(space_name, user_id, password, prefix)
      space_uri  = URI.parse("https://#{space_name}.backlog.jp/XML-RPC")
      proxy_host = proxy_port = nil
      use_ssl    = true
      timeout    = 5

      server = XMLRPC::Client.new(space_uri.host,
                                  space_uri.path,
                                  space_uri.port,
                                  proxy_host,
                                  proxy_port,
                                  user_id,
                                  password,
                                  use_ssl,
                                  timeout,
                                 )
      super(server, prefix)
    end

    def method_missing(action, *args)
      action = action.to_s.camelize(:lower).to_sym
      super
    end
  end
end
