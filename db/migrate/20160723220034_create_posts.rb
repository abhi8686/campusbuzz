class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.text :body, full:false
      t.text :image_url
      t.text :video_url
      t.references :category, index: true, foreign_key: true
      t.integer :likes

      t.timestamps null: false
    end
  end
end
