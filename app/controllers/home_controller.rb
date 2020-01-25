class HomeController < ApplicationController
  def index
    @blog = BlogPanel.take
  end

  def destroy

  end
end
