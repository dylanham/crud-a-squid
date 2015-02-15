class CreateSquids < ActiveRecord::Migration
  def change
    create_table :squids do |t|
      t.string :name
      t.string :type
      t.integer :age

      t.timestamps null: false
    end
  end
end
