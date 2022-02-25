class AddUsersToNotes < ActiveRecord::Migration[7.0]
  def change
    add_reference :notes, :user
  end
end
