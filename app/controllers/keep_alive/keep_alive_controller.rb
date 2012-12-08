module KeepAlive
  class KeepAliveController < ActionController::Base
    unloadable #http://apidock.com/rails/ActiveSupport/Dependencies/Loadable/unloadable

    def index
      no_of_rows = KeepAlive.config.no_of_rows

      respond_to do |format|
        format.xml { render :xml => {:total => no_of_rows}.to_xml(:root => "keep_alive")}
        format.json { render :json => {:keep_alive => {:total => no_of_rows}}}
        format.html { render :text => "No Of Rows : #{no_of_rows}"}
      end
    end
  end
end
