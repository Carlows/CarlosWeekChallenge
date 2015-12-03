CREATE TABLE Equipos
(
    EquipoId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(50) NOT NULL
);

CREATE TABLE Jugadores
(
    JugadorID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Edad int NOT NULL,
    EquipoId int,
    FOREIGN KEY (EquipoId) REFERENCES Equipos(EquipoId)
);

INSERT INTO Equipos(Nombre) VALUES ('Barcelona'), ('Madrid'), ('Milan'), ('Bayern');

INSERT INTO Jugadores(Nombre, Apellido, Edad, EquipoID) VALUES
      ('Lionel', 'Messi', 29, (SELECT EquipoID from Equipos WHERE Nombre = 'Barcelona')),
      ('Andres', 'Iniesta', 34, (SELECT EquipoID from Equipos WHERE Nombre = 'Barcelona')),
      ('Xavi', 'Hernandez', 36, (SELECT EquipoID from Equipos WHERE Nombre = 'Barcelona')),
      ('Cristiano', 'Ronaldo', 31, (SELECT EquipoID from Equipos WHERE Nombre = 'Madrid')),
      ('Karim', 'Benzema', 32, (SELECT EquipoID from Equipos WHERE Nombre = 'Madrid')),
      ('Gareth', 'Bale', 27, (SELECT EquipoID from Equipos WHERE Nombre = 'Madrid'));

SELECT Jugadores.Nombre, Jugadores.Apellido, Equipos.Nombre
FROM Jugadores
INNER JOIN Equipos
ON Jugadores.EquipoID = Equipos.EquipoID
WHERE Equipos.Nombre = 'Barcelona';