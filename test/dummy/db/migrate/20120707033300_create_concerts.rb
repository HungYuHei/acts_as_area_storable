class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|

      t.timestamps
    end
  end
end
