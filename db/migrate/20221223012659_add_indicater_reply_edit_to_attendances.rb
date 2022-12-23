class AddIndicaterReplyEditToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :indicater_reply_edit, :integer
  end
end
