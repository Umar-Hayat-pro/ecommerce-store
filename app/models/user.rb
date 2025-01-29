class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 has_one_attached :logo
 has_many :orders
end
