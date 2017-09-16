class AddCuratedToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :curated, :boolean
  end
end
