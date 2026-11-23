USE Spellcards;

-- 1. Personajes (id 1 a 4)
INSERT INTO `Character` (hp, attack, defense, speed, magicSP, physicSP) VALUES
(120, 45, 30, 85, 110, 40),
(150, 65, 50, 60, 45, 95),
(100, 35, 25, 95, 130, 30),
(180, 55, 70, 40, 60, 80);

-- 2. Spellcards (id 1 a 8)
INSERT INTO Spellcard (name, imagen_url, `type`, `description`) VALUES
('Master Spark', 'https://example.com/cards/master-spark.png', 'Ataque', 'Lanza un rayo de alta energía que ignora parte de la defensa.'),
('Hakurei Amulet', 'https://example.com/cards/hakurei-amulet.png', 'Defensa', 'Invoca talismanes protectores que reducen el daño recibido.'),
('Lunatic Red Eyes', 'https://example.com/cards/lunatic-red-eyes.png', 'Control', 'Altera la percepción del rival y reduce su velocidad.'),
('Scarlet Shoot', 'https://example.com/cards/scarlet-shoot.png', 'Ataque', 'Ráfaga rápida de proyectiles carmesí de alcance medio.'),
('Sakura Blossom', 'https://example.com/cards/sakura-blossom.png', 'Soporte', 'Restaura puntos de vida y purifica estados alterados.'),
('Nightmare Eclipse', 'https://example.com/cards/nightmare-eclipse.png', 'Mágica', 'Alto coste de Magic SP con daño en área.'),
('Iron Body', 'https://example.com/cards/iron-body.png', 'Física', 'Aumenta la defensa física durante el turno actual.'),
('Wind God Breath', 'https://example.com/cards/wind-god-breath.png', 'Velocidad', 'Impulsa la agilidad y otorga prioridad en el siguiente ataque.');

-- 3. Jugadores (id 1 a 4, enlazados a Character 1..4)
INSERT INTO Player (name, character_id) VALUES
('Marisa', 1),
('Reimu', 2),
('Reisen', 3),
('Meiling', 4);

-- 4. Mazos / Deck (relación N:M entre Player y Spellcard)
INSERT INTO Deck (player_id, spellcard_id) VALUES
-- Mazo de Marisa (player_id = 1)
(1, 1),
(1, 6),
(1, 8),
-- Mazo de Reimu (player_id = 2)
(2, 2),
(2, 5),
(2, 7),
-- Mazo de Reisen (player_id = 3)
(3, 3),
(3, 4),
(3, 6),
-- Mazo de Meiling (player_id = 4)
(4, 4),
(4, 7),
(4, 2);

-- 5. Stuff / Inventario económico (relación 1:1 única por player_id)
INSERT INTO Stuff (`money`, player_id) VALUES
(1250.50, 1),
(840.00, 2),
(1590.75, 3),
(620.25, 4);