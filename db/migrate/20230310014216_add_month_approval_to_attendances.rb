class AddMonthApprovalToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :month_approval, :date
  end
end
