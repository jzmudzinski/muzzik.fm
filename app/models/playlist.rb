class Playlist < ActiveRecord::Base
  attr_accessible :description, :title, :user_id

  has_and_belongs_to_many :songs
  belongs_to :user
end
