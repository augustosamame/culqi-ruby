require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'culqi-ruby'

module Culqi

  def self.connect(url, api_key, data, type)

    url = URI(Culqi::API_BASE+"#{url}")

    http = Net::HTTP.new(url.host, url.port)
    http.read_timeout = Culqi::READ_TIMEOUT
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = ""
    if type.upcase == "POST"
      request = Net::HTTP::Post.new(url)
      request.body = data.to_json
    end

    if type.upcase == "GET"
      request = Net::HTTP::Get.new(url)
    end

    request["Authorization"] = "Bearer #{api_key}"
    request["Content-Type"] = 'application/json'
    request["cache-control"] = 'no-cache'

    return http.request(request)

  end

end
