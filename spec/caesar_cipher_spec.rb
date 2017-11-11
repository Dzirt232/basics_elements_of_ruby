require "spec_helper"

describe "caesar_cipher function" do

  context "takes parameters and return a string" do
    it "two parameters" do
      expect(caesar_cipher("Hello!",5)).to be_instance_of String
    end

    it "one parameter" do
      expect(caesar_cipher("Hello!")).to be_instance_of String
    end
  end

  context "change a string in cipher" do
    it "change one word" do
      expect(caesar_cipher("Hello!",5)).to eq("Mjqqt!")
    end

    it "change simple sentense" do
      expect(caesar_cipher("How are you?",5)).to eq("Mtb fwj dtz?")
    end

    it "change sentense with punctuation" do
      expect(caesar_cipher("How are you, man?",5)).to eq("Mtb fwj dtz, rfs?")
    end
  end

  describe "substrings function" do
    before(:context) do
      dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit','am','andrey','le','lexa','danilevsky','dan','comp','haker','hak']
    end
  end
end
