-- Schema da API de Licitações (Tijucas/SC)
-- Rodar no banco "railway" do MySQL novo (não precisa CREATE DATABASE).
-- Colunas batem com paraLinhaBanco() do coletor.js e com as queries do server.js.

CREATE TABLE IF NOT EXISTS licitacoes (
  id                              INT AUTO_INCREMENT PRIMARY KEY,
  modalidade                      VARCHAR(255),
  tipo_concorrencia               VARCHAR(255),
  objeto                          TEXT,
  situacao                        VARCHAR(100),
  unidade_gestora                 VARCHAR(255) NOT NULL,
  licitacao_numero                VARCHAR(20)  NOT NULL,
  licitacao_ano                   VARCHAR(4)   NOT NULL,
  processo_administrativo_numero  VARCHAR(20),
  processo_administrativo_ano     VARCHAR(4),
  data_homologacao                DATETIME,
  data_edital                     DATETIME,
  data_adjudicacao                DATETIME,
  abertura_propostas              DATETIME,
  abertura_sessao                 DATETIME,
  tce_registro                    VARCHAR(50),
  tce_numero_processo_termo       VARCHAR(50),
  valor_estimado                  DECIMAL(15,2),
  valor_homologado                DECIMAL(15,2),
  carona                          BOOLEAN DEFAULT FALSE,
  criado_em                       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  atualizado_em                   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_licitacao (unidade_gestora, licitacao_numero, licitacao_ano),
  INDEX idx_situacao (situacao),
  INDEX idx_ano (licitacao_ano)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
