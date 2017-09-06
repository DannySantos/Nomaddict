class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_create :add_name
  after_create :assign_bucket_list
  
  has_one :bucket_list
  
  def add_name
    self.name = "Anonymous" if self.name.blank?
  end
  
  def assign_bucket_list
    self.bucket_list = BucketList.create!(user_id: self.id)
  end
end
