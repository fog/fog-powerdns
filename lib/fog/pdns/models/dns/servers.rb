require 'fog/core/collection'
require 'fog/pdns/models/dns/zone'

module Fog
  module DNS
    class PowerDNS
      class Servers < Fog::Collection
        model Fog::DNS::PowerDNS::Server


      end
    end
  end
end