class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :blog
      # t.integer :posts_tags_id
      t.timestamps null: false
    end
  end
end
