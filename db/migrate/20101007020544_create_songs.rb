class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :title
      t.string :url
      t.text :lyric
      t.integer :category_id
      t.integer :love ,:default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
