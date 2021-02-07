class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: :author }
  has_one_attached :image
  has_many :comments, foreign_key: 'book_id', class_name: 'Comment'
end
