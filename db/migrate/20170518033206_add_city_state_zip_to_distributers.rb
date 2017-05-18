class AddCityStateZipToDistributers < ActiveRecord::Migration[5.0]
  def change
    add_column :distributers, :city, :string
    add_column :distributers, :state, :string
    add_column :distributers, :zip, :string
  end
end
