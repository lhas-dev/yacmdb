class AddModelToServer < ActiveRecord::Migration[7.0]
  def change
    add_column :servers, :model, :string
  end
end
