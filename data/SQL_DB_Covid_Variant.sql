USE DB_Covid_Variant
Go

CREATE TABLE Variant(
id int identity NOT NULL primary key,
location nvarchar(50),
date nvarchar(50),
variant nvarchar(50),
num_sequences int,
perc_sequences int,
num_sequences_total int,
)
GO