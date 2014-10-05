class ActivityGroup < ActiveRecord::Base
  belongs_to :workout
  has_many :activities
end
