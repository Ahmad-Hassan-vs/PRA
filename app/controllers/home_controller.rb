class HomeController < ApplicationController
  def offline
    render 'offline', layout: false
  end

  def trash
    @trash = List.where(completed: true).destroy_all
    redirect_to root_url, notice: "All marked items were removed"
  end

  def trash_all
    @trash_all = List.all.destroy_all
    redirect_to root_url, notice: "All items were removed"
  end
end
