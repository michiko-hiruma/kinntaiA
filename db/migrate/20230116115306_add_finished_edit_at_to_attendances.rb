class AddFinishedEditAtToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :finished_edit_at, :datetime
  end
end
