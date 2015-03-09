require 'fog/core/collection'
require 'fog/pdns/models/dns/server'

module Fog
  module DNS
    class PowerDNS
      class Servers < Fog::Collection
        model Fog::DNS::PowerDNS::Server

        def all
          clear
          # TODO: why isn't list_servers found
          data = service.list_servers.body
          load(data)
        end

        def get(server_id)
          # TODO: Verify usage of the hash
          data = service.get_server(server_id).body['server']
          server = new(data)
          server
        rescue Fog::Service::NotFound
          puts 'help!'
        end

      end
    end
  end
end