class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.string :festival
      t.string :award

      t.timestamps
    end
  end
end
