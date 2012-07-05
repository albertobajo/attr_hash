require "active_support"
require "attr_hash/version"

module AttrHash
  extend ActiveSupport::Concern
  
  def respond_to?(method, include_private = false)
    super_result = super
    if super_result
      super
    elsif not attr_hash.nil?
      attr_hash.key?(method.to_sym)
    else
      false
    end
  end
  
  def method_missing(method, *args, &block)
    super if attr_hash.nil?
    raise NoMethodError unless attr_hash.key? method.to_sym
    attr_hash[method.to_sym]
  end
  
end
