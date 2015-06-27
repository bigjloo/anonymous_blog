class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :blog
      t.timestamps null: false
    end
  end
end
