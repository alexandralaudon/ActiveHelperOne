class QueriesController < ApplicationController

  helper_method :all_tables

  def index
    @employees = Employee.all
  end

  private

  def all_tables
    (ActiveRecord::Base.connection.tables - ['schema_migrations']).each do |table|
      table
    end
  end

end
