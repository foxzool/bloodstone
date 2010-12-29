class RenamePostSlug < ActiveRecord::Migration
  def self.up
    rename_column :posts, :slug, :cache_slug
  end

  def self.down
    rename_column :posts, :cache_slug, :slug
  end
end
