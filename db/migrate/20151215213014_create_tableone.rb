class CreateTableone < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :hire_date
    end
  end
end
