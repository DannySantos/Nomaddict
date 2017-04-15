class AddHeaderImageUrlToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :header_image_url, :string
  end
end
