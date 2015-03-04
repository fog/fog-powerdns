module Fog
  module DNS
    class PowerDNS
      class Real
        # Create a single zone in PowerDNS
        #
        # ==== Parameters
        # kind is required
        # TODO: Display response JSON keys
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Hash>:
        #     * 'zone'<~Hash> The representation of the zone.

        def update_zone(server, id, kind, options = {})
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
              :path     => "/servers/#{server}/zones/#{id}"
          )
        end
      end
    end
  end
end