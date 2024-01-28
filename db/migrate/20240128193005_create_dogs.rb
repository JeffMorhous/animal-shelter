class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.datetime :arrival_date
      t.text :description

      t.timestamps
    end
  end
end
