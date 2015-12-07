require "bundler/setup"

run lambda { |env|
  [301, {'Content-Type' => 'text/plain','Location' => 'https://atmos.org'}, ['See Ya!']]
}
