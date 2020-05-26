class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
         
  has_one_attached :avatar
end
