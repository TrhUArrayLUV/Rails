class AddReferencesToTimeOuts < ActiveRecord::Migration
  def change
    add_reference :time_outs, :teacher, index: true
    add_reference :time_outs, :kid, index: true
  end
end
