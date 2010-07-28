require 'spec_helper'

describe TTL do
  subject do
    TTL.new(0.5)
  end

  it "does not fail for nil ttl" do
    ttl = TTL.new(nil)
    ttl["a"] = "b"
    expect { ttl["a"].should == "b" }.to_not raise_error
  end

  it "does not return anything for ttl == 0" do
    subject.ttl = 0
    subject["a"] = "b"
    subject["a"].should be_nil
  end

  it "does not fail on lookup on empty hash" do
    expect { subject["a"] }.to_not raise_error
  end

  it "stores values as a hash" do
    subject["a"] = "b"
    subject["a"].should == "b"
  end

  it "honors the timeout of the value" do
    subject["a"]= "b"

    once = false

    expect do
      loop do
        subject["a"].should == "b"
        once = true
      end
    end.to raise_error

    once.should be_true
  end
end
