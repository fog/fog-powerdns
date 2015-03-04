require 'fog/core/model'
require 'fog/dns/models/dns/rrsets'

module Fog
  module DNS
    class PowerDNS
      class Zone < Fog::Model
        identity :zone_id

        attribute :zone,    :aliases => 'name'

        def destroy
          service.delete_zone(identity)
          true
        end

        def save
          requires :zone
          data = service.create_zone(zone).body["zone"]
          merge_attributes(data)
          true
        end

      end
    end
  end
end