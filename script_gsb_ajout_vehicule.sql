--
-- Base de données: `gsb_frais`
--

-- --------------------------------------------------------

--
-- Structure de la table `Vehicules`
--

CREATE TABLE IF NOT EXISTS `Vehicules` (
  `id` integer(3) NOT NULL AUTO_INCREMENT,
  `puissance` char(20) DEFAULT NULL,
  `combustible` char(20) DEFAULT NULL,
  `frais_km` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


ALTER TABLE `Visiteur`
ADD vehicule_id integer(3);

ALTER TABLE `Visiteur`
ADD FOREIGN KEY (vehicule_id) REFERENCES Vehicules (id);
