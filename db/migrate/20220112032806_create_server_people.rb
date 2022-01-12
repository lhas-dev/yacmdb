class CreateServerPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :server_people do |t|
      t.belongs_to :server, null: false, foreign_key: true
      t.belongs_to :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
