class AddTimeToTimeOuts < ActiveRecord::Migration
  def change
    add_column :time_outs, :length, :integer

  end
end
