class AddUptoQuartsToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :upto_quarts, :integer
  end
end
