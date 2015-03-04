module Fog
  module DNS
    class PowerDNS
      class Real
        # Delete the zone from the server
        # Reference the zone to delete with server id and zone id

        # ==== Parameters
        # * server<~String> - server id
        # * zone<~String> - zone id
        def delete_zone(server, zone)
          request(
              :expects  => 200,
              :method   => 'DELETE',
              :path     => "/servers/#{server}/zones/#{zone}"
          )
        end
      end
    end
  end
end