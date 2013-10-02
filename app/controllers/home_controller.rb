class HomeController < ApplicationController
  def index
    @presses = Press.all.reverse
    @links = Link.all
    @screenings = Screening.all
    @honors = Honor.all
  end

  def store
  end
end
