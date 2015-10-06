class HomeController < ApplicationController
  load "#{Rails.root}/lib/ladder.rb"
  def index
    while(1)
      @step_zero = dictionary[rand(4030)]
      @step_last = dictionary[rand(4030)]
      if(@step_zero != @step_last)
        break;
      end
    end
  end

  def results
    @step_zero = params[:step_zero]
    @step_last = params[:step_last]
    @step_one = params[:step_one]
    @step_two = params[:step_two]
    @step_three = params[:step_three]
    @step_four = params[:step_four]
    @step_five = params[:step_five]
    @correct = false
    @results = [@step_zero, @step_one, @step_two, @step_three, @step_four, @step_five, @step_last]
    @results.compact!
    if legal(@results)
      @message = "Correct! you win!"
    else
      @message = "Incorrect! you LOSE!"
    end
  end
end
