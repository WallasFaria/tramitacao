class CreateDocTramitacaos < ActiveRecord::Migration
  def self.up
    create_table :doc_tramitacaos do |t|
      t.references :pessoa_destino
      t.date :data_hora
      t.references :documento

      t.timestamps
    end
  end

  def self.down
    drop_table :doc_tramitacaos
  end
end
