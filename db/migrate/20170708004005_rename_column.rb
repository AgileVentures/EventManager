class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :date, :start_date
  end
end
