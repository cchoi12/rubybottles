# Work together solution
# Flog score:

class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect do |n|
      verse(n)
    end.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " \
    "#{quantity(number)} #{container(number)} of beer.\n" \
    "#{action(number)}" \
    "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  private

  def successor(number)
    BottleNumber.new(number).successor
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end

  def container(number)
    BottleNumber.new(number).container
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity
    if number.zero?
      'no more'
    else
      number.to_s
    end
  end

  def action
    if number.zero?
      'Go to the store and buy some more, '
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end

  def successor
    if number.zero?
      99
    else
      number - 1
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
