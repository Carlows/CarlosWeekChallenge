CREATE TABLE Equipos
(
  EquipoID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Jugadores
(
  JugadorID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Edad INT NOT NULL,
  EquipoID INT FOREIGN KEY REFERENCES Equipos(EquipoID)
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
