class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def store_location
    session[:previous_url] = request.fullpath
  end

  def after_sign_in_path_for(resource)
   session[:previous_url] || root_path
  end
  
  def get_bucket_list_ideas_instance_variables
    @user_items = current_user.bucket_list.items
    @user_bucket_list_items = current_user.bucket_list.bucket_list_items
    
    @completed_user_items = []
    current_user.bucket_list.bucket_list_items.where(status: 1).each do |bucket_list_item| 
      @completed_user_items << bucket_list_item.item
    end
  end
end
