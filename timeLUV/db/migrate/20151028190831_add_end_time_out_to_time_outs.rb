class AddEndTimeOutToTimeOuts < ActiveRecord::Migration
  def change
    add_column :time_outs, :end_time_out, :time
    add_column :time_outs, :start_time_out, :time
    add_column :time_outs, :days, :text
    remove_column :time_outs, :scheduled_time_out, :datetime
  end
end
