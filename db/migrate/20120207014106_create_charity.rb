class CreateCharity < ActiveRecord::Migration
  def up
    create_table :charities do |t|
      t.column :name, :string, :null => false
      t.column :votes, :int, :null => false, :default => 0
    end
  end

  def down
  end
end
