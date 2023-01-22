class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :caption
      t.float :longitutde
      t.float :latitude
      t.references :user, null: false, foreign_key: true
      t.boolean :allow_comment
      t.boolean :show_likes

      t.timestamps
    end
  end
end
