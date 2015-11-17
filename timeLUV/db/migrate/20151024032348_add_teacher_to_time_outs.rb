class AddTeacherToTimeOuts < ActiveRecord::Migration
  def change
    #add_reference :time_outs, :teacher, index: true, foreign_key: true
    #add_reference :time_outs, :kid, index: true, foreign_key: true
  end
end
