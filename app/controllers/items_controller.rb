class ItemsController < ApplicationController
  def index
    @items = Item.where(curated: true).limit(20)
    get_bucket_list_ideas_instance_variables
  end
  
  def create
    @item = Item.where("lower(title) = ?", item_params[:title].downcase).first || Item.create(item_params)
    
    @bucket_list = current_user.bucket_list
    BucketListItem.create(bucket_list_id: @bucket_list.id, item_id: @item.id)
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:title)
  end
end