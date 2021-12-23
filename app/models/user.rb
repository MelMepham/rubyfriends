class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :permissions
  has_many :user_details, through: :permissions

  def my_user_details
    permissions.find_by(access: :owner).user_details
  end

end
