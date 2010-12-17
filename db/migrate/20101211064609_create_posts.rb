class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :slug, :null => false
      t.text :body, :null => false
      t.text :body_html, :null => false
      t.references :user

      t.timestamps
    end
    
		add_index :posts, :user_id
  end

  def self.down
		remove_index :posts, :user_id
    drop_table :posts
  end
end
