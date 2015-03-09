require 'fog/core/model'

module Fog
  module DNS
    class PowerDNS
      class Cryptokey < Fog::Model
        identity :cryptokey_id
        attribute :server_id
        attribute :zone_id


      end
    end
  end
end