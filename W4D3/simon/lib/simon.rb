class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    if @game_over == true
      reset_game
      game_over_message
    end
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep(0.5)
      system("clear")
      sleep(0.5)
    end
  end

  def require_sequence
    puts "type the sequence with first letter of the color"
    @seq.each do |color|
      user_color = gets.chomp
      if color[0] != user_color
        game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    puts "good job, try remember this now"
  end

  def game_over_message
    puts "gamve over, you got through #{@sequence_length-1} rounds"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
