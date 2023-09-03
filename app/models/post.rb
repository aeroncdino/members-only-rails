class Post < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  validates :title, presence: true
  validates :content, presence: true
  validates :name, presence:true
end
