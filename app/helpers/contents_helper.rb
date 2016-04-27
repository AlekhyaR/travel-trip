module ContentsHelper
  def get_updated_color
    if current_user.content.present?
      current_user.content.color
    else
      "#B2CC54"
    end
  end
end
