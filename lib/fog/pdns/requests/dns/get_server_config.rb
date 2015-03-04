module Fog
  module DNS
    class PowerDNS
      class Real
        # Get a specific config setting of one server
        # TODO: Can only get / retrieve recursor's allow_from
        #
        # ==== Parameters
        # * server<~String> - server id
        # * config<~String> - config name
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def get_server_config(server, config)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/config/#{config}"
          )
        end

      end
    end
  end
end