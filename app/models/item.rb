class Item < ApplicationRecord
  has_many :bucket_list_items
  has_many :bucket_lists, through: :bucket_list_items
  
  validates :title, presence: true, uniqueness: {case_sensitive: false}
end
