class ChangeExpiresAtToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :softwares, :expires_at, :date
  end
end
