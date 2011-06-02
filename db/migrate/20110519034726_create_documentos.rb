class CreateDocumentos < ActiveRecord::Migration
  def self.up
    create_table :documentos do |t|
      t.string :tipo
      t.string :assunto
      t.string :numero_de_processo
      t.references :setor_origem
      t.references :funcionario_origem

      t.timestamps
    end
  end

  def self.down
    drop_table :documentos
  end
end
