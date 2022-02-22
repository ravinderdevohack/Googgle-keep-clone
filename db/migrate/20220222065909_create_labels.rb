class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :name

      t.timestamps
    end

    create_table :labels_notes, id: false  do |t|
      t.belongs_to :note
      t.belongs_to :label
    end
  end
end
