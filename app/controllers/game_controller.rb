class GameController < ApplicationController #GameController inherits from ApplicationController class
  OPTIONS = ["Rock", "Paper", "Scissors"]
  
  def rules
    render({:template => "/game_templates/rules"})
  end

  def rock
    @we_play = "Rock"
    @they_play = OPTIONS.sample

    if @they_play == "Rock"
      @outcome = "tie"
    elsif @they_play == "Paper"
      @outcome = "lost"
    elsif @they_play == "Scissors"
      @outcome = "won"
    end

    render({:template => "/game_templates/result"})
  end

  def paper
    @we_play = "Paper"
    @they_play = OPTIONS.sample
    
    if @they_play == "Paper"
      @outcome = "tie"
    elsif @they_play == "Rock"
      @outcome = "won"
    elsif @they_play == "Scissors"
      @outcome = "lost"
    end
    
    render({:template => "/game_templates/result"})
  end

  def scissors
    @we_play = "Scissors"
    @they_play = OPTIONS.sample
  
    if @they_play == "Scissors"
      @outcome = "tie"
    elsif @they_play == "Rock"
      @outcome = "lost"
    elsif @they_play == "Paper"
      @outcome = "won"
    end
    
    render({:template => "/game_templates/result"})
  end
end
