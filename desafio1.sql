DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.tabela1(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('sem', 'exemplo'),
    ('troquei', 'para'),
    ('commitar', 'haha');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');