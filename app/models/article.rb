class Article < ApplicationRecord
  include Visible

  def self.ransackable_attributes(auth_object = nil)
    ["title"]
  end

  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  validates :body, presence: true, length: { minimum: 10 }
  validates :title, :category, :prefecture, presence: true

end
