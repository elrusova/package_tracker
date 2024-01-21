class AddTrackingNumberToShipment < ActiveRecord::Migration[7.1]
  def change
    add_column :shipments, :tracking_number, :integer
  end
end
