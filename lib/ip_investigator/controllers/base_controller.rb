# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module IpInvestigator
  class BaseController
    def validate_response(response)			
      if response.code == 429
        raise APIException.new "Rate limit exceeded", response.code, response.body
      elsif response.code == 404
        raise APIException.new "Endpoint not found", response.code, response.body
      elsif response.code == 500
        raise APIException.new "Endpoint application error", response.code, response.body
      elsif response.code == 403
        raise APIException.new "API Key not found or invalid", response.code, response.body
      elsif !response.code.between?(200, 206) #[200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.body
      end
    end
  end
end