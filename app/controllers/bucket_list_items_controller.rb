class BucketListItemsController < ApplicationController
  def create
    @bucket_list_item = BucketListItem.new(bucket_list_item_params)
    @bucket_list_item.bucket_list_id = current_user.bucket_list.id
    @bucket_list_item.save
    
    get_bucket_list_ideas_instance_variables
    
    respond_to do |format|
      format.js
    end
  end
  
  def update
    @bucket_list_item = BucketListItem.find(params[:id])
    @bucket_list_item.update(bucket_list_item_params)
    @context = params[:context]
    
    get_bucket_list_ideas_instance_variables
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def bucket_list_item_params
   params.require(:bucket_list_item).permit(:item_id, :status)
  end
end