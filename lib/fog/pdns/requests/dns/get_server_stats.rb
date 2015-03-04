module Fog
  module DNS
    class PowerDNS
      class Real
        # Retrieves server stats
        #
        # ==== Parameters
        # * server<~String> - server id
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def get_server_stats(server)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/statistics"
          )
        end

      end
    end
  end
end