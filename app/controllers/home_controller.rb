
class HomeController < ApplicationController
  def index
    @companies = Company.all
    @candidates = Candidate.all
  end
end