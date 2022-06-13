require_relative '../tennis'

describe 'tennis score' do
    it 'returns "love:love" given an empty string' do
        expect(score_calculator("")).to eq("love:love")
    end
    it 'returns "15:love" given "1"' do
        expect(score_calculator("1")).to eq("15:love")
    end
end

# method that aceepts a string that represents a number of points (e.g. "1221") and returns the score board, e.g. "Deuce" or "15:15" or "love:15"
# examples "11" -> "30:0"
# examples "1" -> "15:love"

