class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.datetime :arrival_date
      t.text :description

      t.timestamps
    end
  end
end
