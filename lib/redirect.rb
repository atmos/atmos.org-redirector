require "addressable/uri"

class Redirect
  def call(env)
    uri = Addressable::URI.new
    req = Rack::Request.new(env)
    uri.host         = "atmos.org"
    uri.scheme       = "https"
    uri.path         = req.path
    uri.query_values = req.params unless req.params.empty?

    [301, {'Content-Type' => 'text/plain','Location' => uri.to_s}, ['See Ya!']]
  end
end
