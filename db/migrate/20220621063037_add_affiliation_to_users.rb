class AddAffiliationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :affiliation, :string
  end
end
