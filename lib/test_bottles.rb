class Bottles
  def song
    verses(99, 0)
  end

  def verses starting, ending
    starting.downto(ending).collect do |n|
      verse(n)
    end.join("\n")
  end

  def verse number
    case number
    when 0
      "No more botles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{number.pred} #{container(number.pred)} of beer on the wall.\n"
    end
  end

  private

  def container number
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end
end

# when 6
#   "1 six-pack of beer on the wall, " +
#   "1 six-pack of beer.\n" +
#   "Take one down and pass it around, " +
#   "5 bottles of beer on the wall.\n"
# when 7
#   "7 bottles of beer on the wall, " +
#   "7 bottles of beer.\n" +
#   "Take one down and pass it around, " +
#   "1 six-pack of beer on the wall.\n"
