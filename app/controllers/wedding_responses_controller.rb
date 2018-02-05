class WeddingResponsesController < ApplicationController
  def new
    @wedding_response = WeddingResponse.new
  end

  def create
    @wedding_response = WeddingResponse.new(wedding_response_params)
    if @wedding_response.save
      flash[:notice] = "Response submitted successfully"
      render :show
    else
      flash[:warning] = "#{@wedding_response.names} please let us know if you can make it"
      render :new
    end
  end

  private

  def wedding_response_params
    params.require(:wedding_response)
          .permit(:names, :coming, :dietry_requirements, :accomodation, :friday_night, :breakfast)
  end
end
