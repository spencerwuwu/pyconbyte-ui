class CreateCodetests < ActiveRecord::Migration[5.2]
  def change
    create_table :codetests do |t|
      t.string :name
      t.text :main_code
      t.text :input_code
      t.text :question
      t.string :topic
      t.text :result

      t.timestamps
    end
  end
end
