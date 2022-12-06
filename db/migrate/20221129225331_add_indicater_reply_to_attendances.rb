class AddIndicaterReplyToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :indicater_reply, :integer
  end
end
