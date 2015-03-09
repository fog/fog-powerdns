require 'fog/core/collection'
require 'fog/pdns/models/dns/server'
require 'fog/pdns/models/dns/server_config'

module Fog
  module DNS
    class PowerDNS
      class ServerConfigs < Fog::Collection
        model Fog::DNS::PowerDNS::ServerConfig

        def all
          clear
          data = service.list_server_configs.body
          load(data)
        end

        def get(config)
          data = service.get_server_config(config).body
          disp = new(data)
          disp
        rescue Fog::Service::NotFound
          puts 'help!'
        end
      end
    end
  end
end