class Hamming

  def self.compute (one, two)

    if one.length != two.length 
      raise (ArgumentError)
    end

    count = 0

    array1 = one.split("")
    array2 = two.split("")

    comp = array1.zip(array2) 
    comp.each do |a1, a2|
      if 
        a1 != a2 then count +=1
      end
    end

    return count

  end

end

module BookKeeping
  VERSION = 3 
end