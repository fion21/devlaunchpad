class CandidatesController < ApplicationController
  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to root_path, notice: "Thanks! Your application was submitted."
    else
      redirect_to root_path, alert: "Something went wrong."
    end
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :experience, :email)
  end
end
