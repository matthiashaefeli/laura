class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :book_id
      t.integer :blog_id
      t.string :text
      t.string :model_type

      t.timestamps
    end
  end
end
