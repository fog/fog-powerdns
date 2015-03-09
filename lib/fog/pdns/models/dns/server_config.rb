require 'fog/core/model'
require 'fog/pdns/models/dns/server'

module Fog
  module DNS
    class PowerDNS
      class ServerConfig < Fog::Model
        attribute :server_id


      end
    end
  end
end