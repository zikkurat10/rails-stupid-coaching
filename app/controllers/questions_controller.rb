# app/controllers/pages_controller.rb
class QuestionsController < ApplicationController
  def ask
  end


  def answer
    @text = params[:q]

    if @text == @text.upcase
      @answer = coach_answer_enhanced(@text)
    else
      @answer = coach_answer(@text)
    end
  end

end


def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include?("?")
    "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
     ""
  else
    "I don't care, get dressed and go to work!"
  end
    # esle your_message = "I am going to wokr right now"
end

def coach_answer_enhanced(your_message)

  if your_message.include?("?")
    "I can feel your motivation! Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!".upcase
     ""
  else
    "I can feel your motivation! I don't care, get dressed and go to work!"
  end
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end
