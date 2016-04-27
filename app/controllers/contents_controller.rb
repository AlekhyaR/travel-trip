class ContentsController < ApplicationController
  helper ApplicationHelper
  skip_before_filter :verify_authenticity_token
  
  def index
  end
  
  def new
    @content = Content.new
  end

  def create
    @content = Content.create(safe_params)
    if @content.save
      redirect_to root_path, notice: "Successfully created"
    else
      render :action => "new"
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update_attributes!(safe_params)
    redirect_to root_path, notice: "Successfully Updated"
  end

  private
  def safe_params
    params.require(:content).permit(:color, :font, :title, :user_id)
  end

end
