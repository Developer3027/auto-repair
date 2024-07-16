class AddQuartToService < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :quart, :float
  end
end
