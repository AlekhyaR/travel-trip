class Content < ActiveRecord::Base
  # attr_accessor :color, :text, :font
  belongs_to :user
  validates_presence_of :color, :title, :font, :user_id
end
