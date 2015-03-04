module Fog
  module DNS
    class PowerDNS
      class Real
        # Get details of a DNS zone
        #
        # ==== Parameters
        # * zone<~String> - Zone id
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def get_zone(server, zone)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "servers/#{server}/zones/#{zone}"
          )
        end

      end
    end
  end
end