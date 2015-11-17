class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, :email
      t.integer :kids_count
      t.timestamps
    end
  end
end
