# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module IpInvestigator
  class IPInvestigatorClient
    # Singleton access to client controller
    # @return [APIController] Returns the controller instance
    def client
      APIController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(api_key: nil)
      Configuration.api_key = api_key
    end
  end
end
