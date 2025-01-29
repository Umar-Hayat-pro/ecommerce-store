class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_one_attached :logo
  has_many :orders

  def admin?
    role == "admin"
  end

  def product_manager?
    role == "product_manager"
  end

  def orders_manager?
    role == "orders_manager"
  end
end
