class ActivityGroup < ActiveRecord::Base
  self.inheritance_column = nil

  belongs_to :workout
  has_many :activities
end
