class BucketListsController < ApplicationController
  def show
    @bucket_list = BucketList.find(params[:id])
  end
end