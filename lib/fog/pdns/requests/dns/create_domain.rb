module Fog
  module DNS
    class PowerDNS
      class Real
        # Create a single domain in PowerDNS
        #
        # ==== Parameters
        # TODO: Figure out which params are optionals
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Hash>:
        #     * 'domain'<~Hash> The representation of the domain.

        def create_domain(server, name, kind, masters, options = {})
          body = {
              "name" => name,
              "kind" => kind,
              "masters" => masters
          }

          options.each { |option, value|
            body[:option] = value;
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