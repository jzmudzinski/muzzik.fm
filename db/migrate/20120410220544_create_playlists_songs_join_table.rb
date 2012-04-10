class CreatePlaylistsSongsJoinTable < ActiveRecord::Migration
  def up
  	create_table :playlists_songs, :id => false do |t|
  	  t.integer :playlist_id
      t.integer :song_id
  	end
  end

  def down
    drop_table :playlists_songs
  end
end
