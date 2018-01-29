class CreateRandApps < ActiveRecord::Migration[5.1]
  def change
    create_table :rand_apps do |t|
      t.integer :number

      t.timestamps
    end
  end
end
