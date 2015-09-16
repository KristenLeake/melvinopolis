class InfoController < ApplicationController
  def home
    @costumes = Costume.all
    @commissions = Commission.all
    @shows = Show.all
  end

  def about
  end

  def contact
  end

  def shops
  end

  def resume
  end
end
