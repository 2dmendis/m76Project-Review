class RemoveStartTimeFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :startTime, :time
  end
end
