class VotesController < ApplicationController
before_action :authenticate_user!


  def create
      skill = Skill.find(params[:id])
      skill.liked_by current_user
      redirect_to skills_path, notice: "You successfully voted for an skill"
  end

  def destroy
      skill = Skill.find(params[:id])
      skill.unliked_by current_user
      redirect_to skills_path, notice: "You successfully unvoted for an skill"

  end

end
 