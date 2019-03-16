require "pdf_kitchen/version"
require 'net/http'
require 'uri'

module PdfKitchen
  class Error < StandardError; end
  # Your code goes here...
  class Api
    def self.get(token, secret_token)
        uri = URI.parse('https://dev.pdf.kitchen/app/kitchen/cooking')
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        req = Net::HTTP::Post.new(uri)
        req["Content-Type"] = "application/json"
        req.basic_auth token, secret_token

        res = https.request(req)
        puts res.body
    end
  end
end
