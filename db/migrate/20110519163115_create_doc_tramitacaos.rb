class CreateDocTramitacaos < ActiveRecord::Migration
  def self.up
    create_table :doc_tramitacaos do |t|
      t.references :setor_destino, :class => :setor
      t.references :pessoa_destino, :class => :funcionario
      t.date :data
      t.time :hora

      t.timestamps
    end
  end

  def self.down
    drop_table :doc_tramitacaos
  end
end
