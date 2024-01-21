class ShipmentController < ApplicationController
  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipmentt.new(shipment_params)
    if @shipment.save
      redirect_to shipment_path(@shipment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def shipment_params
    params.require(:shipment).permit(:tracking_number)
  end
end
