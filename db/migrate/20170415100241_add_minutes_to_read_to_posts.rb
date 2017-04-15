class AddMinutesToReadToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :minutes_to_read, :integer
  end
end
