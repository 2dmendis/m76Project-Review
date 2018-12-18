class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :date
      t.references :month, foreign_key: true

      t.timestamps
    end
    

  end
end
