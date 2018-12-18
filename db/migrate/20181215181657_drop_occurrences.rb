class DropOccurrences < ActiveRecord::Migration[5.2]
  def change
    def up
    drop_table :occurrences
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  end
end
