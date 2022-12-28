class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at DESC")
  end

  def new
  end
end
