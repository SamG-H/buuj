class LogsController < ApplicationController
  def index
    #@logs = Log.where("kind = ?", 'month')
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.create(log_params)
    @log.user = User.find(1)
    if @log.save
      redirect_to @log
    else
      render :new
    end
  end

  def show
    set_log
  end

  def edit
    set_log
  end

  def update
    set_log
    if @log.update(log_params)
      redirect_to @log
    else
      render :edit
    end
  end

  def destroy
    set_log
    @log.destroy
    redirect_to logs_path
  end

  private
  def log_params
    params.require(:log).permit(:kind)
  end

  def set_log
    @log = Log.find_by(id: params[:id])
  end
end
