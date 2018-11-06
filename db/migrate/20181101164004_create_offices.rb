class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.integer :postal
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
