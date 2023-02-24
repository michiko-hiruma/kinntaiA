class AddStartedBeforeAtToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :started_before_at, :datetime
  end
end
