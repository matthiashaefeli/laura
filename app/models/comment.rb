class Comment < ApplicationRecord
  belongs_to :book, foreign_key: 'book_id', optional: true
  belongs_to :blog, foreign_key: 'blog_id', optional: true
end
