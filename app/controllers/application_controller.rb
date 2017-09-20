class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def store_location
    session[:previous_url] = request.fullpath
  end

  def after_sign_in_path_for(resource)
   session[:previous_url] || root_path
  end
  
  def get_bucket_list_ideas_instance_variables
    @bucket_list = current_user.bucket_list
    @user_items = @bucket_list.items
    @completed_user_items = @bucket_list.items.where(bucket_list_items: { status: 1 })
  end
end
