class CreateTestcases < ActiveRecord::Migration[5.2]
  def change
    create_table :testcases do |t|
      t.string :name
      t.text :main_code
      t.text :input_code

      t.timestamps
    end
  end
end
