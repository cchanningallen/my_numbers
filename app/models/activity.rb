class Activity < ActiveRecord::Base
  belongs_to :activity_group
  belongs_to :workout
  has_one :activity_type
end
