class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates_length_of :title, maximum: 25
  validates_length_of :body, maximum: 75
  validates :body, presence: true
end
