class Bottles
  def initialize
    @song = %{}
  end

  def verse n
    take_beer(n)
  end

  def verses a, b
    multi_verse(a, b)
  end

  def song
    multi_verse(99, 0)
  end

  private

  def take_beer n
    if n.zero?
    <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    elsif n == 1
    <<-VERSE
#{n} bottle of beer on the wall, #{n} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    elsif n == 2
    <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n.pred} bottle of beer on the wall.
    VERSE
    else
    <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n.pred} bottles of beer on the wall.
    VERSE
    end
  end

  def multi_verse a, b
    a.downto(b) do |n|
      @song << take_beer(n)
      @song << "\n" unless n == b
    end
    @song
  end
end
