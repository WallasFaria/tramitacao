class CreateDocumentos < ActiveRecord::Migration
  def self.up
    create_table :documentos do |t|
      t.integer :tipo
      t.string :assunto
      t.integer :numero_de_processo
      t.references :setor_origem, :class => :setor
      t.references :funcionario_origem, :class => :funcionario

      t.timestamps
    end
  end

  def self.down
    drop_table :documentos
  end
end
