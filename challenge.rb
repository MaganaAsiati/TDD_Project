require_relative 'spec/spec_helper'
class Challenge
  def factorial(number)
    (1..number).inject(:*) || 1
  end

  def reversed(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num
    end
  end
end
