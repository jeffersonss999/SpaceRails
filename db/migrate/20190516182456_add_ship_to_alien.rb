class AddShipToAlien < ActiveRecord::Migration[5.2]
  def change
    add_reference :aliens, :ship, foreign_key: true
  end
end
