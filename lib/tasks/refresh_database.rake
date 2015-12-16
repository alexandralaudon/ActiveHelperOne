# rake refresh:create

namespace :refresh do
  desc "Create all new employees"
  task :create => :environment do
    require 'faker'

      Employee.destroy_all
      Salary.destroy_all
      Title.destroy_all

      10.times do |employee|
        Employee.create!(
          employee_no: Faker::Number.hexadecimal(7),
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          gender: ['F', 'M'].sample,
          hire_date: Faker::Date.backward(200)
        )
      end
      employee_no_array = Employee.pluck(:employee_no)
      puts "#{Employee.count} fake employees generated. Employees_no's: #{employee_no_array}"

      10.times do |salary|
        Salary.create!(
          employee_no: employee_no_array.sample,
          salary: Faker::Number.number(6),
          from_date: Faker::Date.backward(200),
          to_date: Faker::Date.forward(200)
        )
      end
      puts "#{Salary.count} fake salaries generated."

      10.times do |title|
        Title.create!(
          employee_no: employee_no_array.sample,
          title: Faker::Name.title,
          from_date: Faker::Date.backward(200),
          to_date: Faker::Date.forward(200)
        )
      end
      puts "#{Title.count} fake titles generated."


  end
end
