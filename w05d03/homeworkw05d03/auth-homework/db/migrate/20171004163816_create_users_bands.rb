class CreateUsersBands < ActiveRecord::Migration[5.1]
  def change
    create_table :users_bands do |t|
    	t.integer :band_id
      t.integer :user_id
    end
  end
end
