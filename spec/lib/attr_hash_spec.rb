require 'spec_helper'

class TestObject
  include AttrHash
  
  attr_accessor :attr_hash, :foo
  
  def initialize
    @attr_hash = { a: 3, b: { c: 5 }, d: nil }
  end
end

describe AttrHash do
  subject { TestObject.new }
  
  describe "method_missing" do
    it { subject.a.should eq(3) }
    it { subject.b.should eq({c:5}) }
    it { subject.d.should be_nil }

    it "should raise an exception" do
      expect {
        subject.e
      }.should raise_error(NoMethodError)
    end
  end
  
  describe "respond_to?" do
    it { subject.respond_to?(:a).should be_true }
    it { subject.respond_to?(:b).should be_true }
    it { subject.respond_to?(:d).should be_true }
    it { subject.respond_to?(:e).should be_false }
  end
  
end