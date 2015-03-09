module Fog
  module DNS
    class PowerDNS
      class Real
        # Modify a single zone in PowerDNS
        #
        # ==== Parameters
        # kind is required
        # TODO: Display response JSON keys
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Hash>:
        #     * 'zone'<~Hash> The representation of the zone.

        def update_zone(server, zone, kind, options = {})
          # TODO: Have kind default to Native
          body = {
              "kind" => kind,
          }

          options.each { |option, value|
            body[option] = value;
          }

          request(
              :body     => Fog::JSON.encode(body),
              :expects  => 200,
              :method   => 'PUT',
              :path     => "/servers/#{server}/zones/#{zone}"
          )
        end
      end
    end
  end
end