def caesar_cipher(line, number)
  wordToNumber = line.each_byte.to_a
  array = []
  wordToNumber.each do |element|
    if element.between?(65, 90) 
      newNumber = element + number
      if newNumber > 90
        newNumber -= 26
      end
      array << newNumber
    elsif element.between?(97, 122) 
      newNumber = element + number
      if newNumber > 122
        newNumber -= 26
      end
        array  << newNumber
    else 
      array << element
    end  
  end
  newArray = array.map {|element| element.chr }
  return newArray.join
end
