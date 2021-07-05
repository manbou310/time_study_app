class WorksController < ApplicationController
  def index
    @work
  end
  def new
    @work = Work.new
    @time_studies = @work.time_studies.build
  end
  
  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def work_params
    params.require(:work).permit(:date, :process_name,
      time_studies_attributes: [:id, :work_id,:production_name, :serial_number, :start_time, :ending_time, :forgetting, :problem, :_destroy])
  end

end



