class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :Game

      t.timestamps
    end
  end
end
