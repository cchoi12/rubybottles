gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/test_bottles'

class BottleTest < Minitest::Test
  def test_the_first_verse
    expected = '99 bottles of beer on the wall, ' \
               "99 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "98 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(99)
  end

  def test_another_verse
    expected = '3 bottles of beer on the wall, ' \
               "3 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "2 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(3)
  end

  def test_verse_2
    expected = '2 bottles of beer on the wall, ' \
               "2 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "1 bottle of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(2)
  end

  def test_verse_1
    expected = '1 bottle of beer on the wall, ' \
               "1 bottle of beer.\n" \
               'Take it down and pass it around, ' \
               "no more bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(1)
  end

  def test_verse_0
    expected = 'No more bottles of beer on the wall, ' \
               "no more bottles of beer.\n" \
               'Go to the store and buy some more, ' \
               "99 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(0)
  end

  def test_a_couple_verses
    expected = '99 bottles of beer on the wall, ' \
               "99 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "98 bottles of beer on the wall.\n" \
               "\n" \
               '98 bottles of beer on the wall, ' \
               "98 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "97 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verses(99, 98)
  end

  def test_a_few_verses
    expected = '2 bottles of beer on the wall, ' \
               "2 bottles of beer.\n" \
               'Take one down and pass it around, ' \
               "1 bottle of beer on the wall.\n" \
               "\n" \
               '1 bottle of beer on the wall, ' \
               "1 bottle of beer.\n" \
               'Take it down and pass it around, ' \
               "no more bottles of beer on the wall.\n" \
               "\n" \
               'No more bottles of beer on the wall, ' \
               "no more bottles of beer.\n" \
               'Go to the store and buy some more, ' \
               "99 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verses(2, 0)
  end

  # def test_six_pack
  #   expected = "7 bottles of beer on the wall, " +
  #              "7 bottles of beer.\n" +
  #              "Take one down and pass it around, " +
  #              "1 six-pack of beer on the wall.\n" +
  #              "\n" +
  #              "1 six-pack of beer on the wall, " +
  #              "1 six-pack of beer.\n" +
  #              "Take one down and pass it around, " +
  #              "5 bottles of beer on the wall.\n"
  #   assert_equal expected, Bottles.new.verses(7, 6)
  # end

  # This is coupled with the code and should be asserting what the
  # output should be without knowing how the code actually works.

  # def test_song_1
  #   bottles = Bottles.new
  #   assert_equal bottles.verses(99, 0), bottles.song
  # end

  # Again, this test is coupled with the code. Instead, this time it is
  # taking the implementation of the method verse and using it to generate
  # the song. If the implementation of verse was changed, this test would break.

  # def test_song_2
  #   bottles = Bottles.new
  #   expected = 99.downto(0).collect { |i| bottles.verse(i) }.join("\n")
  #   assert_equal Bottles.new.song, expected
  # end

  # In this case, it is okay to actually have the 100 lines of the song and asserting
  # that to the song method. It is decoupled from the code and will remain the same
  # expected output even after the refactoring is done on the imlementation.

  # def test_song_3
  #   expected = "99 bottles of beer on the wall, " +
  #              "99 bottles of beer.\n" +
  #              "Take one down and pass it around, " +
  #              "98 bottles of beer on the wall.\n" +
  #              "\n" +
  #              .....
  #              "45 bottle of beer on the wall, " +
  #              "45 bottle of beer.\n" +
  #              "Take one down and pass it around, " +
  #              "44 bottles of beer on the wall.\n" +
  #              "\n" +
  #              ....
  #              "No more botles of beer on the wall, " +
  #              "no more bottles of beer.\n" +
  #              "Go to the store and buy some more, " +
  #              "99 bottles of beer on the wall.\n"
  #   assert_equal expected, Bottles.new.song
  # end
end
