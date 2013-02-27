class Player
  attr_reader :name, :word, :gallows, :new_word

  PARTS = %w["   /", "    \\", "   \\", "    /", "    |", " -------", "    |", "    |", "   /", "    \\", "  /", "  \\"]
  POSITION = %w["26", "27", "49", "50", "73", "93", "119", "142", "164", "165", "186", "189"]

  def initialize(name)
    @name = name
    @gallows = "   ________________\n                   |\n" +
               "                   |\n                   |\n" +
               "                   |\n                   |\n" +
               "                   |\n                   |\n" +
               "                   |\n             ______|_____\n"
    @new_word = ""
    @word = ""
    @miss_list = ""
    @part_number = 0
  end

  def set_word(word)
    @word = word
  end

  # def add_letter(letter)
  #   @new_word = @new_word + letter
  # end

  def add_letter(other_player, letter)
    if other_player.word.length != @new_word.length
      @new_word = (1..(other_player.word.length)).to_a.map {"-"}
    end
    (0..(other_player.word.length - 1)).each_with_index do |letter_position| 
      if letter == other_player.word[letter_position]
        @new_word[letter_position] = letter
      end
    end
    @new_word
  end


  def add_body_part
    gallows_array = @gallows.split("")
    # puts (POSITION[@part_number]).to_i
    PARTS[0..5]
    #(PARTS[@part_number]).length]
    # gallows_array[(PARTS[@part_number]).length]

    #, (PARTS[@part_number]).split("").length] = (PARTS[@part_number]).split("")
    # @gallows = gallows_array.to_s
    # @part_number += 1
    #@gallows = gallows_array.join("")
  end

  # def remove_body_part
  #   @gallows.chop
  # end

  def add_letter_to_miss_list(letter)
    @miss_list = @miss_list + letter
  end

  def letter_valid(letter)
    if @word.include?(letter)
      true
    else
      false
    end
  end

end