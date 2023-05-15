require "improving_grammar"

RSpec.describe do
  context "given an empty string" do
    it "returns fail" do
        expect { improving_grammar("") }.to raise_error(StringQualityException, "StringQualityException occured: Cannot give empty string!")
    end
  end
  context "given a sentence that begins with a capital and ends with a full stop" do
    it "returns true" do
      result = improving_grammar("Hello there.")
      expect(result).to eq true
    end
    # it "returns true" do
    #   result = improving_grammar("HELLO there!")
    #   expect(result).to eq true
    #   end
  end

  context "given a sentence that begins with a captial letter without a full stop" do
    it "returns fail" do
      expect { improving_grammar("Hello there")}.to raise_error(StringQualityException, "StringQualityException occured: String must end with a valid sentence ender!")
    end
  end

  context "given a sentence that has a full stop but no a captial letter" do
    it "returns fail" do
      expect { improving_grammar("hello there.")}.to raise_error(StringQualityException, "StringQualityException occured: String must begin with capital letter!")
    end
  end

  context "given a sentence that has neither a full stop nor a captial letter" do
    it "returns fail" do
      expect { improving_grammar("hello there")}.to raise_error(StringQualityException, "StringQualityException occured: String must begin with capital letter!")
    end
  end  

  context "given a sentence with an uppercase first word" do
    it "returns true" do
      result = improving_grammar("HELLO there.")
      expect(result).to eq true
    end
  end

  # context "given a sentence with an uppercase first word and ends with an exclamation mark" do
  #   it "returns true" do
  #     result = improving_grammar("Hello there!")
  #     expect(result).to eq true
  #   end
  # end  

end