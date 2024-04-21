module Culqi

  class Charge

    extend List
    extend Post
    extend Get

    URL = '/charges/'

    @url = URL

    def self.capture(id)
      response, statuscode = Culqi.connect("#{@url}#{id}/capture/", Culqi.secret_key, nil, "post", Culqi::READ_TIMEOUT)
      Rails.logger.info "Culqi::Charge.capture: #{response}"
      Rails.logger.info "Culqi::Charge.capture: #{statuscode}"
      return response, statuscode
    end

  end

end
