class AddTimeToEvents < ActiveRecord::Migration[5.0]
  def change
      add_column :events, :time, :DateTime, :null => false, :default => 0
  end
end
