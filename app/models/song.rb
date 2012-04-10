class Song < ActiveRecord::Base
  attr_accessible :file_path, :title

  belongs_to :user
  has_and_belongs_to_many :playlists
  has_attached_file :cover
end
