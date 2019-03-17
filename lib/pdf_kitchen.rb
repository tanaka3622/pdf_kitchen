require "pdf_kitchen/version"
require 'net/http'
require 'uri'
require 'json'

module PdfKitchen
  class Error < StandardError; end
  # Your code goes here...
  class Api
    def self.post(filename: "sample.pdf", access_token:, access_secret_token:, data: {})
        uri = URI.parse('https://dev.pdf.kitchen/app/kitchen/cooking')
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        req = Net::HTTP::Post.new(uri)
        req["Content-Type"] = "application/json"
        req.basic_auth access_token, access_secret_token
        req.body = data.to_json
        res = https.request(req)

        File.open(filename, "w") do |f|
          f.puts(res.body.force_encoding("UTF-8"))
        end
    end
  end
end
