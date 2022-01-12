class AddTeamToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :team, :string
  end
end
