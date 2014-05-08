class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # scope macros

  # Concerns macros
  include Select2Concern

  # Constants
  
  # Attributes related macros
  select2_white_list :email

  # association macros
  has_many :attendees

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
