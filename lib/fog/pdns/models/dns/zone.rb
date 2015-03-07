require 'fog/core/model'
require 'fog/pdns/models/dns/rrsets'

module Fog
  module DNS
    class PowerDNS
      class Zone < Fog::Model
        identity :zone_id

        attribute :zone,    :aliases => 'name'
        attribute :server_id

        def destroy
          service.delete_zone(identity)
          true
        end

        # end
        # def rrsets
        #   @rrsets ||= begin
        #                 Fog::DNS::PowerDNS::RRsets.new(

        #                 )
        #   end
        # end

        def save
          requires :zone
          # TODO: What does this do?
          data = service.create_zone(zone).body["zone"]
          merge_attributes(data)
          true
        end

      end
    end
  end
end