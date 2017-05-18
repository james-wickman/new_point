class CreateDistributers < ActiveRecord::Migration[5.0]
  def change
    create_table :distributers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :url
      t.string :email

      t.timestamps
    end
  end
end
