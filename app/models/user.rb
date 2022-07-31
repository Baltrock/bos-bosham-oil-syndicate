class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, presence: true
  validates :admin, inclusion: [true]
  # validates :is_user, inclusion: [true]
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :password, uniqueness: false
  has_many :information_forms
end
