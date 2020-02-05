gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/vampire'

class VampireTest < Minitest::Test
  def test_it_has_a_name
    vampire = Vampire.new("Dracula")
    assert_equal "Dracula", vampire.name

    vampire = Vampire.new("Vladimir")
    assert_equal "Vladimir", vampire.name
  end

  def test_it_keeps_a_pet_bat_by_default

    vampire = Vampire.new("Ruthven")
    assert_equal "bat", vampire.pet
  end

  def test_it_can_have_other_pets

    vampire = Vampire.new("Varney", "fox")
    assert_equal "fox", vampire.pet
  end

  def test_it_is_thirsty_by_default

    vampire = Vampire.new("Count von Count")
    assert vampire.thirsty?
  end

  def test_it_is_not_thirsty_after_drinking

    vampire = Vampire.new("Elizabeth Bathory")
    vampire.drink
    assert_equal false, vampire.drink

    vampire = Vampire.new("Ruthven")
    assert_equal true, vampire.thirsty?
  end
end
