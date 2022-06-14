def score_calculator(points) 
    player1_score = ""
    player2_score = ""
    score_list = ["love", "15", "30", "40"]
    scoreboard = ""
    player1_points = points.count('1')
    player2_points = points.count('2')

    if player1_points >= 3 && player2_points >= 3
        points_difference = player1_points - player2_points
        if points_difference == 0
            scoreboard = "Deuce"
        elsif points_difference == 1 
            scoreboard = "Advantage Player 1"
        elsif points_difference == -1
            scoreboard = "Advantage Player 2"
        elsif points_difference == -2
            scoreboard = "Player 2 wins"
        elsif points_difference == 2
            scoreboard = "Player 1 wins"
        end
    else
        score_list.each_with_index do |score, index|
            if index == player1_points
                player1_score = score
            end
            if player2_points == index
                player2_score = score
            end
        end
        scoreboard = player1_score + ":" + player2_score
    end

    scoreboard
end
# score_calculator("121")