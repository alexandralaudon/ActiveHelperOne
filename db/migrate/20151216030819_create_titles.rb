class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :employee_no
      t.string :title
      t.date :from_date
      t.date :to_date
    end
  end
end
