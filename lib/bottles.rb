# My first solution
# Flog score: 18.0

class Bottles
  def initialize
    @song = %()
  end

  def verse(number)
    take_beer(number)
  end

  def verses(start, finish)
    multi_verse(start, finish)
  end

  def song
    multi_verse(99, 0)
  end

  private

  def take_beer(_number)
    if number.zero?
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    elsif number == 1
      <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    elsif number == 2
      <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    else
      <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number.pred} bottles of beer on the wall.
    VERSE
    end
  end

  def multi_verse(start, finish)
    start.downto(finish) do |n|
      @song << take_beer(n)
      @song << "\n" unless n == finish
    end
    @song
  end
end
