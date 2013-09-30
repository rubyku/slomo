class HomeController < ApplicationController
  def index
    @presses = Press.all.reverse
    @links = Link.all.reverse
    @screenings = Screening.all.reverse
  end

  def store
  end
end
