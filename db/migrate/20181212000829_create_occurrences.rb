class CreateOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrences do |t|
      t.integer :eventID
      t.string :month
      t.integer :date

      t.timestamps
    end
  end
end
