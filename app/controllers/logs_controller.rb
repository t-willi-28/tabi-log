class LogsController < ApplicationController
  def index
    @log = Log.all
  end
end
