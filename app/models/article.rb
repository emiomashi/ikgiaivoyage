class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :body, presence: true, length: { minimum: 10 }
  validates :title, :category, :prefecture, presence: true
end
