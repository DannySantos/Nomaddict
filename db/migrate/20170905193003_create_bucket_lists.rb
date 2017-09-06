class CreateBucketLists < ActiveRecord::Migration[5.0]
  def change
    create_table :bucket_lists do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
