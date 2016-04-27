module ApplicationHelper
  def customized_color
    color = current_user.content.color? ? "#cccccc" : current_user.content.color 
    return color
  end
end
