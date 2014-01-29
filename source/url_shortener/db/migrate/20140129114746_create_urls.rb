class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short, :long
      t.integer :clicks
    end
  end
end
