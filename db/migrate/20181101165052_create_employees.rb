class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :rfc
      t.string :job
      t.integer :office_id

      t.timestamps
    end
  end
end
