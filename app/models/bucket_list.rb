class BucketList < ApplicationRecord
  belongs_to :user
  has_many :bucket_list_items
  has_many :items, through: :bucket_list_items
end
