module Fog
  module DNS
    class PowerDNS
      class Real
        # Get details of a DNS server
        #
        # ==== Parameters
        # * server<~String> - server id
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def get_server(server)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}"
          )
        end

      end
    end
  end
end