class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :reoccur
      t.string :reoccurType
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
