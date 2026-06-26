class HomeController < ApplicationController
  def index
    @library = LocationDistance::KPU_LIBRARY
  end
end
