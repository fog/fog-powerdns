module Fog
  module DNS
    class PowerDNS
      class Real
        # Update a specific config setting of one server
        # TODO: Can only get / retrieve recursor's allow_from
        #
        # ==== Parameters
        # * server<~String> - server id
        # * config<~String> - config name
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def update_server_config(server, config, body)
          if config == 'allows_from'
            request(
                :body     => body,
                :expects  => 200,
                :method   => 'PUT',
                :path     => "/servers/#{server}/config/#{config}"
            )
          else
            puts 'Only allows_from config is allowed.'
          end
        end

      end
    end
  end
end