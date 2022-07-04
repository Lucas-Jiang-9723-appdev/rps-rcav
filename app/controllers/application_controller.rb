class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def homepage
    render({:template => "game_templates/homepage.html.erb"})
  end
  
  def play_rock
    @cpu_move = ["rock", "paper", "scissors"].sample
    @result_dict = {"rock"=>"tied" , "paper"=>"lost", "scissors"=>"won"}
    render({:template => "game_templates/user_rock.html.erb"})
  end

  def play_scissors
    @cpu_move = ["rock", "paper", "scissors"].sample
    @result_dict = {"rock"=>"lost" , "paper"=>"won", "scissors"=>"tied"}
    render({:template => "game_templates/user_scissors.html.erb"})
  end

  def play_paper
    @cpu_move = ["rock", "paper", "scissors"].sample
    @result_dict = {"rock"=>"won" , "paper"=>"tied", "scissors"=>"lost"}
    render({:template => "game_templates/user_paper.html.erb"})
  end


end
