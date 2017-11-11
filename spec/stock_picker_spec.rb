require "spec_helper"

describe "stock_picker function" do
  let(:days) {days = [42,5,2,4,6,7,8,2,3]}

  it "takes a array and return a string" do
    expect(stock_picker(days)).to be_instance_of String
  end

  it "find profit bay day and sell" do
    expect(stock_picker(days)).to eql("Bay in the 2 day, and sell in 6 day.")
  end
end
