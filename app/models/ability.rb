class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
      if user.admin?
        can :manage, :all
      else
        can :read, [User, Tour]
        can :update, User, id: user.id
        can [:create, :read], [BookTour, Comment, Rating]
      end
  end
end
