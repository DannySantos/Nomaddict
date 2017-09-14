class BucketListItem < ApplicationRecord
  belongs_to :bucket_list
  belongs_to :item
  
  validates_uniqueness_of :bucket_list_id, scope: :item_id
end
