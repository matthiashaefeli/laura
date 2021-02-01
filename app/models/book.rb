class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: :author }
  has_one_attached :image
end
