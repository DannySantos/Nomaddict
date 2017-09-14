class AddBucketListIdToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :bucket_list, foreign_key: true
  end
end
