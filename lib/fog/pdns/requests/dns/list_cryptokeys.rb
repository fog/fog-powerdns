module Fog
  module DNS
    class PowerDNS
      class Real
        # Get details of all public cryptokeys
        #
        # ==== Parameters
        # Need server_id, zone_id
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def list_cryptokeys(server, zone)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/zones/#{zone}/cryptokeys"
          )
        end

      end
    end
  end
end