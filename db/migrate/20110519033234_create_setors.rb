class CreateSetors < ActiveRecord::Migration
  def self.up
    create_table :setors do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end

  def self.down
    drop_table :setors
  end
end
