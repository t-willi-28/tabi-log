class LogsController < ApplicationController
  def index
    @log = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @log = Log.find(params[:id])
    @comment = Comment.new
    @comments = @log.comments.includes(:user)
  end

  def destroy
    log = Log.find(params[:id])
    log.destroy
    redirect_to root_path
  end

  private
  def log_params
    params.require(:log).permit(:place, :description, :point, :image).merge(user_id: current_user.id)
  end
end
