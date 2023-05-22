class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @result = params['result']

    if @result == 'I am going to work'
      @answer = 'Great!'
    elsif @result.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
