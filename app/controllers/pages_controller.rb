class PagesController < ApplicationController
  def game
    unless cookies[:total]
      cookies[:total] = 0
    end
    @number = cookies[:total].to_i
  end

  def update_game
    total = cookies[:total].to_i
    increment = params[:increment].to_i
    total += increment
    cookies[:total] = total
    redirect_to "/game"
  end

  def reset
    cookies[:total] = nil
    redirect_to "/game"
  end
end
