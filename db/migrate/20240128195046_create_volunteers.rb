class CreateVolunteers < ActiveRecord::Migration[7.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :cumulative_hours

      t.timestamps
    end
  end
end
