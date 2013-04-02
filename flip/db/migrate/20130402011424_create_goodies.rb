class CreateGoodies < ActiveRecord::Migration
  def change
    create_table :goodies do |t|
      t.string :description

      t.timestamps
    end
  end
end
