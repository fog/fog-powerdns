module Fog
  module DNS
    class PowerDNS
      class Real
        # Searches for term in server logs
        #
        # ==== Parameters
        # * server<~String> - server id
        # * term<~String> - search term
        #
        # ==== Returns
        # TODO: Fill this out
        #

        def search_log(server, term)
          request(
              :expects  => 200,
              :method   => 'GET',
              :path     => "/servers/#{server}/search-log?q=#{term}"
          )
        end

      end
    end
  end
end