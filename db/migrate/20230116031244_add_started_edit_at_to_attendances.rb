class AddStartedEditAtToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :started_edit_at, :datetime
  end
end
