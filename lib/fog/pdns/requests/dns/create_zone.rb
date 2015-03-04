module Fog
  module DNS
    class PowerDNS
      class Real
        # Create a single zone in PowerDNS
        #
        # ==== Parameters
        # Name, kind, and nameservers LIST are required
        # TODO: Display response JSON keys
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Hash>:
        #     * 'zone'<~Hash> The representation of the zone.

        def create_zone(server, name, kind, nameservers, options = {})
          body = {
              "name" => name,
              "kind" => kind,
              "nameservers" => nameservers
          }

          options.each { |option, value|
            body[option] = value;
          }

          request(
              :body     => Fog::JSON.encode(body),
              :expects  => 201,
              :method   => 'POST',
              :path     => "/servers/#{server}/zones"
          )
        end
      end
    end
  end
end