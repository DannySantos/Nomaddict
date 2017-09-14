class RemoveBucketListIdFromItem < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key "items", "bucket_lists"
    remove_column "items", "bucket_list_id"
  end
end
