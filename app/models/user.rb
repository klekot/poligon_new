class User < ActiveRecord::Base
  belongs_to :company
  belongs_to :group
  has_many   :posts
  has_many   :tickets

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         # :recoverable,
         :rememberable,
         :trackable,
         :validatable
end
