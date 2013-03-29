class HomeController < ApplicationController
  def index
    @presses = Press.all
    @links = Link.all
  end
end
