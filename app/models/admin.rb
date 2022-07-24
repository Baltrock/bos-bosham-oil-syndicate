class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, uniqueness: { case_sensitive: false }
  include ActiveModel::Validations
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :password, uniqueness: false
  has_many :dashboard_form
  # validates_with AdminValidator
end
