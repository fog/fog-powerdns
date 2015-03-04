module Fog
  module DNS
    class PowerDNS
      class Real
        # Get details of all pdns servers
        #
        # ==== Parameters
        #
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def list_zones()
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers"
          )
        end

      end
    end
  end
end