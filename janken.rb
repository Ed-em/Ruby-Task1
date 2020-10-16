# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
  def hand
    # Display "Sentences that require the player to enter 0 to 2".
    puts "Please enter a number to play a hand."
    puts "0:Rock, 1:Scissors, 2:Paper"
    # Get what the player has entered in the variable "input_hand" and assign it.
      #Hint! Use the "gets method".
    input_hand = gets.to_i
    # 「input_hand」(取得した値)が「0, 1, 2」のいずれかだとwhileから脱出させ、それ以外だと初めから繰り返させます。
      #Hint! Use "while" and "if".
    # Let's implement according to the example of the type after * * Be careful of commenting out when implementing
    # while true
      while true
      # if 条件を書く (「input_hand」(取得した値)が「0, 1, 2」のいずれかの場合だった場合)
          # 「input_hand」(取得した値)をそのまま返します。
        if input_hand == 0 || input_hand == 1 || input_hand == 2
            #Hint! Use "return".
          return input_hand
        # else * Other than the conditions
        else
          # Display "Sentences that require the player to enter 0 to 2".
          #puts "Please enter the number again."
          puts "Please enter 0, 1 or 2"
          # puts "0: Goo, 1: Choki, 2: Par"
          puts "0:Rock, 1:Scissors, 2:Paper"
          # Get what the player has entered in the variable "input_hand" and assign it.
          input_hand = gets.to_i
          # end if statement end
        end
        # end while statement end
      end
  end
end
# Write the logic that the enemy randomly generates a value of "0 ~ 2".
class Enemy
  def hand
    #Randomly output the values of goo, choki, and par
    enemy_hand = rand(0..2)
    janken = ["Rock", "Scissors", "Paper"]
    puts "The computer played #{janken[enemy_hand]}"
    return enemy_hand
  end
end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)
    # 変数「janken」に["グー", "チョキ", "パー"]を代入します。
    #janken = ["Paper", "Rock", "Scissors"]
    # "The opponent's hand is # {value generated by the enemy}." Is output.
    # puts "相手の手は#{janken[enemy_hand]}です。"
    #puts "The computer played #{janken[enemy_hand]}"
    #Create logic to play rock-paper-scissors from the return value of the Player class and the return value of the Enemy class.
      # Let's implement according to the example of the type after * * Be careful of commenting out when implementing
      # if 条件を書く Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
      # "Aiko" is output.
      if player_hand == enemy_hand
      #puts "Aiko"
        puts "Draw! Play again"
      # Returns "true" to run rock-paper-scissors repeatedly.
        #Hint! Use "return".
        return true
    # elsif If the combination is as follows
      elsif
      #  (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      # Output "You win".
        puts "You win"
      #End while Returns "false" to end rock-paper-scissors.
        return false
    # else * Other than the conditions
      else
      # Output "You are losing".
        puts "You are losing"
     #End while Returns "false" to end rock-paper-scissors.
      return false
    # end if statement end
    end
  end
end
#Substitute the instantiated Player for the variable "player".
player = Player.new
# Assign an instantiation of Enemy to the variable "enemy".
enemy = Enemy.new
# Assign an instantiation of Janken to the variable "janken".
janken = Janken.new
# Assign "true" to the variable "next_game". * This is because the iterative process is executed while while forever unless "next_game" becomes "false".
next_game = true
# Let's implement according to the example of the type after * * Be careful of commenting out when implementing。
# while next_game
while next_game
# 変数「next_game」にじゃんけんを実行して返ってきた値(戻り値)を代入します。
  # 「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
  next_game = janken.pon(player.hand, enemy.hand)
  # When "false" is returned in the execution result of rock-paper-scissors, this while is terminated. When "true" is returned, it repeats that number of times.
# end while statement end
end
