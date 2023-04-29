class Article < ApplicationRecord
  include Visible

  include PgSearch::Model
  pg_search_scope :search_by_title_and_body,
  against: [ :title, :body ],
  using: {
    tsearch: { prefix: true } #
}

  def self.ransackable_attributes(auth_object = nil)
    ["title"]
  end

  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :body, presence: true, length: { minimum: 10 }
  validates :title, :category, :prefecture, presence: true

end
