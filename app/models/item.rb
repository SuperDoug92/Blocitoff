class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

  default_scope { order('created_at DESC') }

  def days_left 
    ((created_at.in_time_zone.to_date + 7.days)-DateTime.now.in_time_zone.to_date).to_int 
  end
end
