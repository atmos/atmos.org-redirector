require "bundler/setup"

run lambda { |env|
  [301, {'Content-Type' => 'text/plain','Location' => 'http://www.atmos.org'}, 'See Ya!']
}
