class AddRoleToServerPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :server_people, :role, :string
  end
end
