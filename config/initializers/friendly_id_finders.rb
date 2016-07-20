# A hack until this gets released: https://github.com/norman/friendly_id/blob/3cf87ab78dc6bd6c8e9ff5c6263fd24101ce9a72/lib/friendly_id/finders.rb#L79
module FriendlyId
  module Finders
    def self.setup(model_class)
      model_class.instance_eval do
        relation.class.send(:include, friendly_id_config.finder_methods)
        model_class.send(:extend, friendly_id_config.finder_methods)
      end
    end
  end
end
