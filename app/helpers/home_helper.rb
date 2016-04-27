module HomeHelper
  def custom_color
    current_user.content.color.nil? ? current_user.content.color : '#cccccc'
  end
  def custom_font
    current_user.content.font? ?  current_user.content.font : 'sans-serif'
  end
  def custom_title
    current_user.content.title? ? current_user.content.title : 'Hello!'
  end
end
