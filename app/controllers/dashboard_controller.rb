class DashboardController < ApplicationController

  layout 'dashboard'

  def example_one
    @organization = Organization.find_by_name('Pathfinder International')
    @roles = Role.all
  end
end
