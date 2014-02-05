class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #setup or protected attributes 
  attr_accessible :email, :password, :password_confirmation, 
  	:remember_me, :first_name, :last_name, :profile_name

  has_many :statuses

  def full_name
  	first_name + " " + last_name
  end
  
end
