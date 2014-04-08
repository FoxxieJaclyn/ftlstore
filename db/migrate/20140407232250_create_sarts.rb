class CreateSarts < ActiveRecord::Migration
  def change
    create_table :sarts do |t|

      t.timestamps
    end
  end
end
