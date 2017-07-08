class ChangeDurationTypeInEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :duration, :integer
  end
end
