class Post < ApplicationRecord
  before_create :add_minutes_to_read
  before_update :add_minutes_to_read
  
  has_many :comments
  
  def add_minutes_to_read
    words = Nokogiri::HTML(self.content).inner_text.scan(/\w+/).count
    minutes = words / 275
    minutes = 1 if minutes == 0
    self.minutes_to_read = minutes.ceil
  end
end
