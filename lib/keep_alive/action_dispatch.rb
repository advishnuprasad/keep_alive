module KeepAlive
  module ActionDispatch
    def keep_alive
      self.get "/keep_alive", :controller => "keep_alive/keep_alive", :action => "index"
    end
  end
end

ActionDispatch::Routing::Mapper.send(:include, KeepAlive::ActionDispatch)