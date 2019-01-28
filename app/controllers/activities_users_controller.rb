class ActivitiesUsersController < ApplicationController
  before_action :authenticate_user!
  def create
  	@activity = Activity.find(params[:activity_id])
  	@activity_user = ActivitiesUsers.new(activity_id: @activity.id, user_id: current_user.id)
    @activity_user.completed = true
    @activity_user.completed_at = Time.now
  	if @activity_user.save
  		redirect_to activities_path, notice: 'la tarea se realizo con exito'
  	else
  		redirect_to activities_path, alert: 'la tarea no a sido ingresada'
  	end
  end

  def index
   @user_activities = current_user.activities
  end

  def activities_count
  @activities = current_user.activities.where(completed: true).count
  end
end
