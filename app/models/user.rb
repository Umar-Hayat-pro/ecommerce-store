class User < ApplicationRecord
  before_save :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #  enum role: { user: 0, product_manager: 1, order_manager: 2, accounts_manager: 3, super_admin: 4 }

  # validates :role, presence: true

  # private
  # def set_default_role
  #   self.role ||= :user
  # end
end
