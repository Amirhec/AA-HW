class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize

    @sequence_length == 1
    @game_over = false 
    @seq = []


  end

  def play
    while @game_over == false
      take_turn
    end

    game_over_message
    reset_game


  end

  def take_turn
    show_sequence
    require_sequence

   

  end

  def show_sequence

    add_random_color

  end

  def require_sequence

  end

  def add_random_color

    @seq << COLORS.shuffle[0]
    

  end

  def round_success_message

    "round success"

  end

  def game_over_message
    "game over"

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end
