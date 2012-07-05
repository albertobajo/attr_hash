require "active_support"
require "attr_hash/version"

module AttrHash
  extend ActiveSupport::Concern
  
  def method_missing(method, *args, &block)
    self.attr_hash ||= {}
    raise NoMethodError unless self.attr_hash.key? method.to_sym
    self.attr_hash[method.to_sym]
  end
  
end
