CREATE DATABASE Spotify
USE Spotify
CREATE TABLE Artists (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30) NOT NULL
)
CREATE TABLE Albums (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30) NOT NULL,
	ArtistId INT FOREIGN KEY REFERENCES Artists(Id)
)
CREATE TABLE Songs (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30) NOT NULL,
	AlbumId INT FOREIGN KEY REFERENCES Albums(Id)
)
--One song can belong to more than one artist (Many-to-many relation)
CREATE TABLE ArtistSongs (
	Id INT PRIMARY KEY IDENTITY,
	ArtistId INT FOREIGN KEY REFERENCES Artists(Id),
	SongId INT FOREIGN KEY REFERENCES Songs(Id)
)
INSERT INTO Artists VALUES ('Eminem'), ('Young M.A'), ('Royce Da 5''9"'), ('White Gold'),
('Ed Sheeren'), ('Juice WRLD'), ('Skylar Grey'), ('Black Thought'), ('Q-Tip'),
('Denaun'), ('Anderson .Paak'), ('Don Toliver'), ('KXNG Crooked'), ('Joell Ortiz')