require 'fog/core/collection'
require 'fog/pdns/models/dns/server'
require 'fog/pdns/models/dns/server_config'

module Fog
  module DNS
    class PowerDNS
      class ServerConfigs < Fog::Collection
        model Fog::DNS::PowerDNS::ServerConfig

      end
    end
  end
end