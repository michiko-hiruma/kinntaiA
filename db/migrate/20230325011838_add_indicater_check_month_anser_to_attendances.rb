class AddIndicaterCheckMonthAnserToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :indicater_check_month_anser, :string
  end
end
