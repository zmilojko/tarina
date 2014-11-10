class CreateBoohs < ActiveRecord::Migration
  def change
    create_table :boohs do |t|
      t.string :title

      t.timestamps
    end
  end
end
