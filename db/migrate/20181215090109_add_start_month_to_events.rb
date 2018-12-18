class AddStartMonthToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :startMonth, :string
  end
end
