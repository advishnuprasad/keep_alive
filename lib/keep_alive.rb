require "keep_alive/version"
require 'keep_alive/action_dispatch'
require "keep_alive/engine"
require 'keep_alive/config'
module KeepAlive
  def self.config
    @config ||= KeepAlive::Config.new
    yield(@config) if block_given?
    @config
  end
end
