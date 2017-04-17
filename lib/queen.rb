class Array
  define_method(:attack) do |queenB|
    if self[0] == queenB[0]
      true
    elsif self[1] == queenB[1]
      true
    elsif (self[0]-queenB[0]).abs == (self[1]-queenB[1]).abs
      true
    else
      false
    end
  end
end
