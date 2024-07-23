class AddServiceCategoryToServices < ActiveRecord::Migration[7.1]
  def change
    add_reference :services, :service_category, null: false, foreign_key: true
  end
end
