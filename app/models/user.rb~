class User < ActiveRecord::Base
  def self.all_status
    return ['admin', 'client', 'volunteer', 'client_candidate', 'volunteer_candidate', 'donor']
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :id, :status
  # attr_accessible :title, :body
  has_many :apps
  has_many :events
  accepts_nested_attributes_for :apps
  after_create :send_confirmation_email
  
  def choose_status(input)
  end
  def is_valid_status?
    valid_status = ['admin', 'client', 'volunteer', 'client_candidate', 'volunteer_candidate', 'donor']
    return valid_status.include?(self.status)
  end  


  protected

  def send_confirmation_email
    UserMailer.welcome_email(self).deliver
  end
  
  def confirmation_required?
    false
  end
end
