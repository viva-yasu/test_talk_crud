class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :messase

      t.timestamps null: false
    end
  end
end
