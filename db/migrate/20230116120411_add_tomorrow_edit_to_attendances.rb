class AddTomorrowEditToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :tomorrow_edit, :boolean,default:false
  end
end
