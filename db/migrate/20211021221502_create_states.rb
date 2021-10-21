class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :visited
      t.string :unvisited
      t.string :plan_to
      t.timestamps
    end
  end
end
