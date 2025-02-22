class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  has_many :audit_logs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :phone

  validates :phone, length: {is: 10}

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX

  def full_name 
    last_name.upcase + ", "+ first_name.upcase
  end

end
