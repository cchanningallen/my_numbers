class Collector < ActiveRecord::Base
  has_many :children, class_name: "Collector", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Collector"
  belongs_to :workout
end
