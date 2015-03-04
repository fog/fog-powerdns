require 'fog/pdns/core'

module Fog
  module DNS
    class PowerDNS < Fog::Service
      requires :api_key
      recognizes :host, :port, :persistent, :scheme, :timeout

      model_path 'fog/dns/models/dns'
      model       :server
      collection  :servers
      model       :server_config
      collection  :server_configs
      model       :zone
      collection  :zones
      collection  :rrsets
      model       :crypto_key
      collection  :crypto_keys

      request_path 'fog/dns/requests/dns'
      request :list_servers
      request :get_server
      request :list_server_configs
      request :get_server_config
      request :update_server_config
      request :list_zone
      request :create_zone
      request :get_zone
      request :delete_zone
      request :update_rrsets
      request :update_zone
      request :notify_zone
      request :retrieve_zone
      request :list_cryptokeys
      request :get_cryptokey
      request :search_log
      request :get_server_stats

      class Mock
      end

      class Real
        def initialize(options={})

          @api_key = options[:api_key]
          @connection_options = options[:connection_options] || {}
          @host       = options[:host]      || "127.0.0.1:8081"
          @persistent = options[:persistent]|| false
          @port       = options[:port]      || 8081
          @scheme     = options[:scheme]    || 'http'
          @connection = Fog::XML::Connection.new("#{@scheme}:#{@host}:#{@port}", @persistent, @connection_options)
        end

        def reload
          @connection.reset
        end

        def request(params)
          params[:headers] ||= {}
          params[:headers].merge!("X-API-key" => "#{@api_key}")
          params[:headers].merge!(
              "Accept" => "application/json",
              "Content-Type" => "application/json"
          )

          response = @connection.request(params)

          unless response.body.empty?
            response.body = Fog::JSON.decode(response.body)
          end
          response
        end
      end
    end
  end
end