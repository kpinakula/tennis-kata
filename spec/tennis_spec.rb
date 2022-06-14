require_relative '../tennis'

describe 'tennis score' do
    it 'returns "love:love" given an empty string' do
        expect(score_calculator("")).to eq("love:love")
    end
    it 'returns "15:love" given "1"' do
        expect(score_calculator("1")).to eq("15:love")
    end
    it 'returns "15:15" given "12"' do
        expect(score_calculator("12")).to eq("15:15")
    end
    it 'returns "30:40" given "12122"' do
        expect(score_calculator("12122")).to eq("30:40")
    end
    it 'returns "love:15" given "2"' do
        expect(score_calculator("2")).to eq("love:15")
    end
    it 'returns "Deuce" given "121212"' do
        expect(score_calculator("121212")).to eq("Deuce")
    end
    it 'returns "Advantage Player 1" given "1212121"' do
        expect(score_calculator("1212121")).to eq("Advantage Player 1")
    end
    it 'returns "Advantage Player 2" given "1212122"' do
        expect(score_calculator("1212122")).to eq("Advantage Player 2")
    end
    it 'returns "Deuce" given "12121212"' do
        expect(score_calculator("12121212")).to eq("Deuce")
    end
    it 'returns "Advantage Player 2" given "121212212"' do
        expect(score_calculator("121212212")).to eq("Advantage Player 2")
    end
    it 'returns "Player 2 wins" given "1212122122"' do
        expect(score_calculator("1212122122")).to eq("Player 2 wins")
    end
    it 'returns "Player 1 wins" given "1212122111"' do
        expect(score_calculator("1212122111")).to eq("Player 1 wins")
    end
    it 'returns "Player 1 wins" given "11112"' do
        expect(score_calculator("11112")).to eq("Player 1 wins")
    end
    it 'returns "Player 1 wins" given "11112222"' do
        expect(score_calculator("11112222")).to eq("Player 1 wins")
    end
    it 'returns "Player 1 wins" given "1212121122"' do
        expect(score_calculator("1212121122")).to eq("Player 1 wins")
    end
end

# method that aceepts a string that represents a number of points (e.g. "1221") and returns the score board, e.g. "Deuce" or "15:15" or "love:15"
# examples "11" -> "30:0"
# examples "111" -> "40:0"
# examples "1" -> "15:love"
# love, 15, 30, 40
# 40:40 -> "Deuce"
# Invalid input, e.g. "1111222", "12121112"
