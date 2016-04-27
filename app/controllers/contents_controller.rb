class ContentsController < ApplicationController
  helper ApplicationHelper

  def new
    @content = Content.new
  end

  def create
    Content.create!(safe_params)
    redirect_to root_path, notice: "Successfully created"
  end

  private
  def safe_params
    params.require(:content).permit(:color, :font, :title, :user_id)
  end

end
