# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module IpInvestigator
  class APIException < StandardError
    # value store
    attr_reader :response_code

    # value store
    attr_reader :response_body

    # The HTTP response code from the API request
    # @param [String]    reason    the reason for raising an exception
    # @param [Numeric]   response_code    the HTTP response code from the API request
    # @param [Object]    response_body    the HTTP unprased response from the API request
    def initialize(reason, response_code, response_body)
      super(reason)
      @response_code = response_code
      @response_body = response_body
    end
  end
end
