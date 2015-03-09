require 'fog/core'
require 'fog/json'
require 'fog/xml'

module Fog
  module PowerDNS
    extend Fog::Provider

    service(:dns, 'DNS')
  end
end