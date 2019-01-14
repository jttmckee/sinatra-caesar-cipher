def caesar_cipher(stringInput, shift)
  letters = stringInput.split('')
  shift = shift % (26 * (shift.abs/shift))
  letters.collect! do |letter|
    if letter <= 'z' and letter >= 'a'
      letterNum = letter.ord
      letterNum += shift
      letter = letterNum.chr

      if letter > 'z'
        newShift = (letter.ord) - ('z'.ord)
        letterNum = 'a'.ord + newShift - 1
        letter = letterNum.chr
      end
      if letter < 'a'
        newShift = ('a'.ord) - (letter.ord)
        letterNum = 'z'.ord - newShift + 1
        letter = letterNum.chr
      end
    elsif letter <= 'Z' and letter >='A'
      letterNum = letter.ord
      letterNum += shift
      letter = letterNum.chr
      if letter > 'Z'
        newShift = (letter.ord) - ('Z'.ord)
        letterNum = 'A'.ord + newShift - 1
        letter = letterNum.chr
      end
      if letter < 'A'
        newShift = ('A'.ord) - (letter.ord)
        letterNum = 'Z'.ord - newShift + 1
        letter = letterNum.chr
      end
    end
     letter
  end
  return letters.join

end
