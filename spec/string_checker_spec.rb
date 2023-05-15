require "string_checker"

RSpec.describe "string_checker method" do
  context "when given an empty string" do
    it "fails" do
      expect { string_checker("")}.to raise_error("fail, gave an empty string")
    end
  end

  context "when given a string that contains TODO without '#'" do
    it "fails" do
      result = string_checker("TODO")
      expect(result).to eq false
    end
  end
  
  context "when given a string that contains #TODO" do
    it "passes" do
      result = string_checker("#TODO")
      expect(result).to eq true
    end
  end  
end