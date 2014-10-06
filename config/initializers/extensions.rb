module ActiveRecordExtension

  extend ActiveSupport::Concern

  def base_attributes
     self.attributes.except("created_at", "updated_at")
  end
end

# include the extension
ActiveRecord::Base.send(:include, ActiveRecordExtension)
