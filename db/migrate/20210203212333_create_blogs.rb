class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
