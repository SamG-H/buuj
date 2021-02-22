class LogsController < ApplicationController
  def index
    @logs = Log.where("kind = ?", 'month')
  end
end
