class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at DESC")
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:shop_name, :occupation_id, :salary, :ticket_id, :domitory_id,:phone_number,:text)
  end

end
