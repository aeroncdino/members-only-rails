class Post < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  
end
