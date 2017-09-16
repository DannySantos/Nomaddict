class ItemsController < ApplicationController
  def index
    @items = Item.where(curated: true)
  end
  
  def create
    @item = Item.where("lower(title) = ?", item_params[:title].downcase).first || Item.create(item_params)
    
    @bucket_list = BucketList.find(params[:item][:bucket_list_id])
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