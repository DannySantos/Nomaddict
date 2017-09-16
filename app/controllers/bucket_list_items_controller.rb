class BucketListItemsController < ApplicationController
  def create
    @bucket_list_item = BucketListItem.new(bucket_list_item_params)
    @bucket_list_item.bucket_list_id = current_user.bucket_list.id
    @bucket_list_item.save
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def bucket_list_item_params
   params.require(:bucket_list_item).permit(:item_id)
  end
end