class AddTypeIdToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :type_id, :integer
  end
end
