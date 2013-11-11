class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :apps
  accepts_nested_attributes_for :apps
  after_save :send_confirmation_email
  protected
  def send_confirmation_email
    UserMailer.welcome_email(self).deliver
  end
  
  def confirmation_required?
    false
  end
end
