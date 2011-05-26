class CreateDocumentos < ActiveRecord::Migration
  def self.up
    create_table :documentos do |t|
      t.integer :tipo
      t.string :assunto
      t.integer :numero_de_processo
      t.references :setor_origem
      t.references :funcionario_origem

      t.timestamps
    end
  end

  def self.down
    drop_table :documentos
  end
end
