class Content < ActiveRecord::Base
  # attr_accessor :color, :text, :font
  belongs_to :user
  validates_presence_of :color, :title, :font, :user_id
  before_create :restrict_user_from_creating_one_more_record

  def restrict_user_from_creating_one_more_record
    errors.add(:base, "Cannot create one more record, instead update") if self.id.present? 
  end
end
