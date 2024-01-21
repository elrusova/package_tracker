class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.text :status
      t.text :location
      t.timestamp :delivery_time

      t.timestamps
    end
  end
end
