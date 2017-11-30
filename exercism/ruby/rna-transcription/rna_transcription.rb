class Complement

  def self.of_dna(cells)
   
    conv = {"C" => "G", "G" => "C", "T" => "A", "A" => "U"}

    cells.chars.map do |cell| 
      position = conv.keys.index(cell)
      if !position.nil? then cell = conv.values[position] end
      cell
    end.join('')
    # If not say return empty string
  end
end
module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end