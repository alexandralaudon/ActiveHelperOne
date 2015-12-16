class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :employee_no
      t.integer :salary
      t.date :from_date
      t.date :to_date
    end
  end
end
