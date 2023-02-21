class AddChangeEditToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :change_edit, :boolean,default:false
  end
end
