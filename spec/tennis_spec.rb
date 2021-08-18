class Tennis
    def output_score
        "0-0"
    end
end

RSpec.describe "Tennis" do

  it "can output score of 0-0" do
    tennis = Tennis.new
    expect(tennis.output_score).to eq("0-0")  
  end

  it "can output a score of 15-0 when player one scores a point." do
    tennis = Tennis.new
    tennis.increase_score("player_1")
    expect(tennis.output_score).to eq("15-0")
  end 
end