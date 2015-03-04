module Fog
  module DNS
    class PowerDNS
      class Real
        # Get all of a DNS server's config settings
        #
        # ==== Parameters
        # * server<~String> - server id
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def list_server_configs(server)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/config"
          )
        end

      end
    end
  end
end