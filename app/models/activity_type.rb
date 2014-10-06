class ActivityType < ActiveRecord::Base
  CATEGORY_OPTIONS = ['lift', 'skill', 'gymnastics', 'body-weight', 'olympic lift']

  validates_uniqueness_of :name
end
