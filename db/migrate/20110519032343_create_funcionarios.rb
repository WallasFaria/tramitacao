class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
      t.string :nome
      t.string :matricula
      t.references :setor
      t.references :usuario
      
      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end
