class HomeController < ApplicationController
  def index
    @presses = Press.all
    @links = Link.all
    @screenings = Screening.all
  end

  def store
  end
end
