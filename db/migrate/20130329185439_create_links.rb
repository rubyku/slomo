class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end

  def down
    remove_column :links, :title
  end
end
