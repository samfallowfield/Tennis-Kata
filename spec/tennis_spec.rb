class Tennis
    attr_accessor :player_1_scored
    attr_accessor :player_1_points

    def initialize
        @player_1_points = 0
    end

    def output_score
        return "30-0" if player_1_points == 2
        return "15-0" if player_1_scored
        "0-0"
    end

    def increase_score(player)
        if player == "player_1"  
            @player_1_scored = true
            @player_1_points += 1
        end
    end    
end

RSpec.describe "Tennis" do

  let(:tennis) { Tennis.new }


  it "can output score of 0-0" do
    expect(tennis.output_score).to eq("0-0")  
  end

  it "can output a score of 15-0 when player one scores a point." do
    tennis.increase_score("player_1")
    expect(tennis.output_score).to eq("15-0")
  end
  
  it "can output a score of 30-0 when player one scores again." do
    tennis.increase_score("player_1")
    tennis.increase_score("player_1")
    expect(tennis.output_score).to eq("30-0")
  end

end