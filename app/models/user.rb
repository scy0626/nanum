class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :withs
  has_many :borrows
  has_many :communities
  has_many :honeys
  has_many :markets
  
  has_many :withres
  has_many :borrowres
  has_many :communityres
  has_many :marketres
  
  has_many :likes
  has_many :liked_honeys, through: :likes, source: :honey
  
  def is_like?(post)
    Like.find_by(user_id: self.id, honey_id: post.id).present?
  end

end
