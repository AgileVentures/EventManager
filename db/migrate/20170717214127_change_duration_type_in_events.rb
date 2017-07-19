class ChangeDurationTypeInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :duration, :integer
  end
end
