class HomeController < ApplicationController
  def index
    @presses = Press.all.reverse
    @links = Link.all
    @screenings = Screening.all.reverse
    @honors = Honor.all
  end

  def store
  end
end
