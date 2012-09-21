class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user, :presence => true
  validates :user_id, :presence => true
  validates :content, :presence => true
  default_scope :order => "created_at DESC"
end
