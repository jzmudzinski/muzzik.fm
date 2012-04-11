class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :user_id
      t.string :file_path

      t.timestamps
    end
  end
end
