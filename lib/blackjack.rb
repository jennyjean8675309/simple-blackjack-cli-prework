def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_number)
  prompt_user
  answer = get_user_input
  if answer == 's'
    card_number
  elsif answer == 'h'
    new_card = deal_card
    card_number = card_number + new_card
  else 
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  card_sum = 
  until card_sum  > 21
    hit?(card_number)
    display_card_total
  end
    end_game
end
    
