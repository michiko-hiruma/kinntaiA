class ChangeDatatypeIndicaterReplyEditOfAttendance < ActiveRecord::Migration[6.1]
  def change
    change_column :attendances, :indicater_reply_edit, :integer
  end
end
