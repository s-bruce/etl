class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.string :taxonomy
      t.integer :targetValue

      t.timestamps
    end
  end
end
