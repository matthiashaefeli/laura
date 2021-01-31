class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: :author }
end
