class AddDesignatedWorkStartTimeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :designated_work_start_time, :datetime
  end
end
