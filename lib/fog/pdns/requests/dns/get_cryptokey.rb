module Fog
  module DNS
    class PowerDNS
      class Real
        # Get details of a cryptokey
        #
        # ==== Parameters
        # * server<~String> - server id
        # * zone<~String> - zone id
        # * cryptokey<~String> - cryptokey id

        #
        # ==== Returns
        # TODO: Fill this out
        #

        def get_cryptokey(server, zone, cryptokey)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/zones/#{zone}/cryptokeys/#{cryptokey}"
          )
        end

      end
    end
  end
end