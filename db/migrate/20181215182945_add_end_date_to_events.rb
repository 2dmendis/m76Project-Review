class AddEndDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :endDate, :integer
    add_column :events, :endMonth, :string
    
  end
end
