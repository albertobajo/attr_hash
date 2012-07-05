require "active_support"
require "attr_hash/version"

module AttrHash
  extend ActiveSupport::Concern
  
  def respond_to?(method, include_private = false)
    self.attr_hash ||= {}
    self.attr_hash.key? method.to_sym
  end
  
  def method_missing(method, *args, &block)
    self.attr_hash ||= {}
    raise NoMethodError unless self.attr_hash.key? method.to_sym
    self.attr_hash[method.to_sym]
  end
  
end
