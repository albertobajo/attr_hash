require "active_support"

require "attr_hash/version"

module AttrHash
  extend ActiveSupport::Concern
  
  def method_missing(method, *args, &block)
    raise NoMethodError unless attr_hash.key? method.to_sym
    attr_hash[method.to_sym]
  end
  
end
