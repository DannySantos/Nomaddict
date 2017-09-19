class AddStatusToBucketListItem < ActiveRecord::Migration[5.0]
  def change
    add_column :bucket_list_items, :status, :integer
  end
end
