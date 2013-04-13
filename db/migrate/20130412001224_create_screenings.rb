class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
