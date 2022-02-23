class AddColumnToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :deleted_time, :date
  end
end
