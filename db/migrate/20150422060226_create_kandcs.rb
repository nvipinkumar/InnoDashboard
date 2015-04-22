class CreateKandcs < ActiveRecord::Migration
  def change
    create_table :kandcs do |t|
      t.string :Name
      t.string :Summary
      t.text :Description
      t.text :Owner
      t.text :Reviewed
      t.integer :Status
      t.text :Comments
      t.text :Action
      t.string :Imperative

      t.timestamps
    end
  end
end
