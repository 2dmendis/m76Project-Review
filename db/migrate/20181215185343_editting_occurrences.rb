class EdittingOccurrences < ActiveRecord::Migration[5.2]
  def change
    rename_column :occurrences, :month, :startMonthO
    rename_column :occurrences, :date, :startdateO
    add_foreign_key :occurrences, :events

    add_column :occurrences, :endDateO, :integer
    add_column :occurrences, :endMonthO, :string
    add_column :occurrences, :nameO, :string
    add_column :occurrences, :descriptionO, :text
  end
end
