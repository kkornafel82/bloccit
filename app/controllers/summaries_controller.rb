class SummariesController < ApplicationController
  def new
    @summary = Summary.new
  end

  def show
    @summary = Summary.find(params[:id])
  end

  def create
     @summary = Summary.new(params.require(:summary).permit(:body,:public))
     authorize @summary
     if @summary.save
       redirect_to @summary, notice: "Summary was saved successfully."
     else
       flash[:error] = "Error creating Summary. Please try again."
       render :new
     end
   end
end
