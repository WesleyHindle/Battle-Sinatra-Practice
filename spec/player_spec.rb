require 'player'

describe Player do 
  subject(:charlotte) { Player.new("Charlotte") }
  subject(:ciara) { Player.new("Ciara") }

  describe '#name' do 
    it 'returns the name' do 
      expect(charlotte.name).to eq "Charlotte"
    end 
  end 

  describe "#hit_points" do 
    it 'returns the hit points' do 
      expect(charlotte.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end 
  end 

  describe "#attack" do 
    it 'damages the player' do 
      expect(charlotte).to respond_to(:receive_damage) #What does the : do?
      charlotte.attack(ciara)
    end 
  end 

  describe "#receive_damage" do 
    it 'reduced the player hit points' do 
      expect { charlotte.receive_damage }.to change { charlotte.hit_points }.by (-10)
    end 
  end 
end