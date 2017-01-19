class AddTimeToEvents < ActiveRecord::Migration[5.0]
  def change
      add_column :events, :time, :datetime, :null => false, :default => 0
  end
end
