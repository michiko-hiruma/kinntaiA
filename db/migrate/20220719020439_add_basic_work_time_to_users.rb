class AddBasicWorkTimeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :basic_work_time, :datetime
  end
end
