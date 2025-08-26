class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true
  attribute :published, :boolean, default: false
end
