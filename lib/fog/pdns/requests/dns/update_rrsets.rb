module Fog
  module DNS
    class PowerDNS
      class Real
        # Modify existing RRset's of a zone
        #
        # ==== Parameters
        # TODO: Display response JSON keys
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Hash>:
        #     * 'zone'<~Hash> The representation of the rrsets.

        def update_rrsets(server, id, options = {})
          # TODO: Have kind default to Native
          options.each { |option, value|
            body[option] = value;
          }

          request(
              :body     => Fog::JSON.encode(body),
              :expects  => 200,
              :method   => 'PATCH',
              :path     => "/servers/#{server}/zones/#{id}/"
          )
        end
      end
    end
  end
end