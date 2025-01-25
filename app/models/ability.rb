# frozen_string_literal: true

class Ability
  include CanCan::Ability

  # def initialize(user)
  #   user ||= User.new # Guest user

  #   if user.super_admin?
  #     can :manage, :all
  #   elsif user.product_manager?
  #     can :manage, Product
  #   elsif user.order_manager?
  #     can :manage, Order
  #   elsif user.accounts_manager?
  #     can :manage, Account
  #   else
  #     can :read, :all
  #   end
  # end
end
