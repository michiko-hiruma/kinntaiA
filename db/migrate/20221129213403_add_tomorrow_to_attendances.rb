class AddTomorrowToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :tomorrow, :boolean,default:false
  end
end
