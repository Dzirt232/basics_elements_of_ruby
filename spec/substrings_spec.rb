require "spec_helper"

  describe "substrings function" do
    let(:dict) { dict = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit','am','andrey','le','lexa','danilevsky','dan','comp','haker','hak'] }
    # before(:context) do
    #   dict = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit','am','andrey','le','lexa','danilevsky','dan','comp','haker','hak']
    # end
    context "work" do
      it "takes two parameters and return a Hash" do
        expect(substrings("Hello, go away!!!",dict)).to be_instance_of Hash
      end
    end
     context "find substrings" do
       it "in sentense" do
         expect(substrings("Hello, go away!!!",dict)).to eql({"go" => 1})
       end
     end
  end
