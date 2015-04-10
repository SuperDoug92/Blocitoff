class Item < ActiveRecord::Base
  belongs_to :user

  def days_left 
    ((created_at.in_time_zone.to_date + 7.days)-DateTime.now.in_time_zone.to_date).to_int
    
  end
end
