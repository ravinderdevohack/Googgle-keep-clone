class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :description
      t.boolean :pinned, default: false
      t.boolean :archive, default: false
      t.date :date
      t.time :time
      t.string :image
      t.integer :deleted, default: 0

      t.timestamps
    end
  end
end
