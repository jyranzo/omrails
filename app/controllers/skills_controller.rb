class SkillsController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]

  # GET /skills
  def index
    @skills = Skill.all
  end

  # GET /skills/1
  def show
    @skill = Skill.find(params[:id])
  end

  # GET /skills/new
  def new
    @skill = current_user.skills.new
  end

  # GET /skills/1/edit
  def edit
    @skill = current_user.skills.find(params[:id])
  end

  # POST /skills
  def create
    @skill = current_user.skills.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /skills/1
  def update
    @skill = current_user.skills.find(params[:id])
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill = current_user.skills.find(params[:id])
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:user_id, :content)
    end
end
