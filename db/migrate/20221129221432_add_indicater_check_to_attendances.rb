class AddIndicaterCheckToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :indicater_check, :string
  end
end
