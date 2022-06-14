def score_calculator(points) 
    player1_score = ""
    player2_score = ""
    score_list = ["love", "15", "30", "40"]

    score_list.each_with_index do |score, index|
        if index == points.count('1')
            player1_score = score
        end
        if points.count('2') == index
            player2_score = score
        end
    end
    
    scoreboard = player1_score + ":" + player2_score
end
# score_calculator("121")