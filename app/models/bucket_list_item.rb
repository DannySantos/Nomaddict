class BucketListItem < ApplicationRecord
  belongs_to :bucket_list
  belongs_to :item
  
  validates_uniqueness_of :bucket_list_id, scope: :item_id
  
  enum status: {active: 0, done: 1}
  
  before_create :set_status
  
  def set_status
    self.status = 0 if self.status == nil
  end
end
