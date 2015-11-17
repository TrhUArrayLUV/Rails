class CreateTimeOuts < ActiveRecord::Migration
  def change
    create_table :time_outs do |t|
      t.datetime :scheduled_time_out
      t.belongs_to :teacher
      t.belongs_to :kid
      t.timestamps
    end
  end
end
