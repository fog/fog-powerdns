module Fog
  module DNS
    class PowerDNS
      class Real
        # Retrieves master
        # Authoritative only, zone must be set up as slave
        # (fails otherwise)
        #
        # ==== Parameters
        # * server<~String> - server id
        # * zone<~String> - zone name
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def retrieve_zone(server, zone)
          request(
              :expects  => 200,
              :method   => 'PUT',
              :path     => "/servers/#{server}/zones/#{zone}/axfr-retrieve"
          )
        end

      end
    end
  end
end