require "cdjukebox/version"

begin
  require 'pry'
rescue LoadError
  puts 'might consider running this under bundle with pry'
end

# after it is compiled...
require File.join(File.dirname(__FILE__) , "../ext/cdjukebox/CDJukebox")

module Cdjukebox
  # uh, nvmz.
end
