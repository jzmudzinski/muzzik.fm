class Ability
  include CanCan::Ability

  def initialize(user)

    can :manage, Playlist, :user_id => user.id
    can :manage, Song, :user_id => user.id

  end
end
