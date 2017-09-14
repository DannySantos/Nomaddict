class CreateBucketListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :bucket_list_items do |t|
      t.references :bucket_list, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
