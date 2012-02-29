module Metatags
  
  module ControllerMethods
    def self.included(base)
      base.send(:helper_method, :metatags_collection)
    end
  
    def add_meta(attrs = {}, &block)
      metatags_collection << [attrs, block]
    end
  
    def metatags_collection
      @metatags ||= []
    end
  end
  
  module HelperMethods
    def metatags
      tags = []
      metatags_collection.each do |meta|
        attrs, block = meta
        attrs.merge!(instance_eval(&block)) unless block.nil?
        tags << tag(:meta, attrs)
      end
      raw tags.join("\n")
    end
  end
end