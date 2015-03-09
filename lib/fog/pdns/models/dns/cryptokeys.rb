require 'fog/core/collection'
require 'fog/pdns/models/dns/cryptokey'

module Fog
  module DNS
    class PowerDNS
      class Cryptokeys < Fog::Collection
        model Fog::DNS::PowerDNS::Cryptokey



      end
    end
  end
end