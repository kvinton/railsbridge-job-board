class JobsController < ApplicationController
    def index
      @jobs = Job.all
    end
    def new
        @job = Job.new
  end
    def create
        @job = Job.create(job_params)
        if @job.valid?
          redirect_to jobs_path
        else
          flash[:error_item] = @job.errors.full_messages
          redirect_to new_job_path
        end
    end
    def edit
      @job = Job.find(params[:id])
    end
    def update
      @job = Job.find(params[:id])
      @job.update_attributes(job_params)
      redirect_to jobs_path
    end
    def destroy
      @job = Job.find(params[:id])
      @job.destroy
      redirect_to jobs_path
    end
    def show
      @job = Job.find(params[:id])
    end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end

end
