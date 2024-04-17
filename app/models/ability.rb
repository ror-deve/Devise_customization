# frozen_string_literal: true

class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new(role: 'student')

    if user.admin?
      can :read, ActiveAdmin::Page, name: 'Dashboard'
    elsif user.student?
      can :read, 'home/student'
    elsif user.mentor?
      can :read, 'home/mentor'
    end
  end
end
