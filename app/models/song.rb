class Song < ActiveRecord::Base
  attr_accessible :file_path, :title, :cover

  belongs_to :user
  has_and_belongs_to_many :playlists

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "80x80>" }

end
