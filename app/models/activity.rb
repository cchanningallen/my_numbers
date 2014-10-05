class Activity < ActiveRecord::Base
  belongs_to :activity_group
  belongs_to :workout, through: :activity_group
end
