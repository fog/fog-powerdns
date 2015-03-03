require 'fog/core/model'
require 'fog/dns/models/dns/rrsets'

module Fog
  module DNS
    class PowerDNS
      class Zone < Fog::Model
        identity :zone_id

        attribute :domain,    :aliases => 'name'

        def destroy
          service.delete_domain(identity)
          true
        end

        def save
          requires :domain
          data = service.create_domain(domain).body["domain"]
          merge_attributes(data)
          true
        end

      end
    end
  end
end