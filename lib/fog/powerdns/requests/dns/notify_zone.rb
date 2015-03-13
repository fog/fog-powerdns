module Fog
  module DNS
    class PowerDNS
      class Real
        # DNS Notify all slaves of the zone
        # Authoritative only, zone must be set up as master
        # or slave (fails otherwise)
        #
        # ==== Parameters
        # * server<~String> - server id
        # * zone<~String> - zone name
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def notify_zone(server, zone)
          request(
              :expects  => 200,
              :method   => 'PUT',
              :path     => "/servers/#{server}/zones/#{zone}/notify"
          )
        end

      end
    end
  end
end