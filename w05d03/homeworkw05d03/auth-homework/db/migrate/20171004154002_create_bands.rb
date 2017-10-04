class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :form_year
      t.string :current_label

      t.timestamps
    end
  end
end
