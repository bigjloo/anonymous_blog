class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      # t.integer :posts_tags_id
      t.timestamps null: false
    end
  end
end
