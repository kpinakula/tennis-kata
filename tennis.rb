def score_calculator(points) 
    player1_score = "love"
    player2_score = "love"
    if points.count('1') == 1
        player1_score = "15"
    end
    # if points.count('2') == 0
    #     player2_score = "love"
    # end

    scoreboard = player1_score + ":" + player2_score

end