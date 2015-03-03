module Fog
  module DNS
    class PowerDNS
      class Real
        # Delete the zone from the server
        # Reference the zone to delete with server id and zone id

        # ==== Parameters
        # * server<~String> - server id
        # * domain<~String> - server id
        def delete_domain(server, domain)
          request(
              :expects  => 200,
              :method   => 'DELETE',
              :path     => "servers/#{server}/zones/#{domain}"
          )
        end
      end
    end
  end
end