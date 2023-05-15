require 'estimate_reading_time'

RSpec.describe "estimate_reading_time" do
    it "empty string returns zero" do 
        result = estimate_reading_time("")
        expect(result).to eq 0
    end

    it "estimates a result for a text under 200 words return 1" do 
        result = estimate_reading_time("one ")
        expect(result).to eq 1
    end 

    it "estimates a result for a text of 200 words return 1" do 
        result = estimate_reading_time("one " * 200)
        expect(result).to eq 1
    end 

    it "estimates a result for a text of 300 words return 2" do 
        result = estimate_reading_time("one " * 300)
        expect(result).to eq 2
    end 

    it "estimates a result for a text of 400 words return 2" do 
        result = estimate_reading_time("one " * 400)
        expect(result).to eq 2
    end 

    it "estimates a result for a text of 5,000 words return 100" do 
        result = estimate_reading_time("one " * 5000)
        expect(result).to eq 25
    end 
end




        