class ChangeDatatypeStartedEditAtOfAttendances < ActiveRecord::Migration[6.1]
  def change
    change_column :attendances, :started_edit_at, :datetime
    
  end
end
