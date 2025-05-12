class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.integer :recipe_id
      t.integer :category_id
      t.string :comment

      t.timestamps
    end
  end
end
