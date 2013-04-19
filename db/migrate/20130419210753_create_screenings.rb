class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.string :date
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
