class AddOvertimeWorkToAttendance < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :overtime_work, :string
  end
end
