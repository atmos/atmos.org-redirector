require File.dirname(__FILE__) + '/vendor/gems/environment'

Bundler.require_env

run lambda { |env|
  [301, {'Content-Type' => 'text/plain','Location' => 'http://www.atmos.org'}, 'See Ya!']
}
