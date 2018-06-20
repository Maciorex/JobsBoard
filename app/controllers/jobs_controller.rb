class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

  def show; end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job
    else
      render "New"
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def jobs_params
    @job = Job.find(params[:id])
  end

  def find_job
    params.require(:job).permit(:title, :description, :company, :url)
  end
end
