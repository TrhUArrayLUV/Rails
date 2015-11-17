class RemoveOldTables < ActiveRecord::Migration
  def up
    Teacher.all.each do |t|
      Account.create(name: t.name, email: t.email)
    end
    Kid.all.each do |k|
      Account.create(name: k.name)
    end
    drop_table :kids
    drop_table :teachers
  end
end
