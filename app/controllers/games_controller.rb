class GamesController < ApplicationController
  def play
    if user_guess.odd?
      @result = "Odd"
    elsif user_guess.even?
      @result = "Even"
    end
  end
end
