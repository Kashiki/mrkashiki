[class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  before_save { |user| user.email = user.email.downcase}

  validates :name, presence: true, length: { maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  			uniqueness:, case_sensitive: false 

  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true

end
