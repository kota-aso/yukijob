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

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to job_path(params[:id])
    else
      render :edit
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root_path
  end
  
  private

  def job_params
    params.require(:job).permit(:shop_name, :occupation_id, :salary, :ticket_id, :domitory_id,:phone_number,:text)
  end

end
