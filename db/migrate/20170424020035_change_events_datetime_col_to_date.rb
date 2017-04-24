class ChangeEventsDatetimeColToDate < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :datetime, :date
  end
end
