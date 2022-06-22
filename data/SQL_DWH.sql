USE Covid_DWH
Go

CREATE TABLE Date(
id_date int identity NOT NULL Primary key,
jour int,
mois int,
annee int
)
GO

CREATE TABLE Location(
id_location int identity NOT NULL Primary key,
nom_location nvarchar(50),
continent nvarchar(50),
population Bigint
)
GO

CREATE TABLE variant(
id_variante int identity NOT NULL Primary key,
nom_variant nvarchar(50),
num_seq int,
perc_seq float
)
GO

CREATE TABLE Covariant(
id_date int NOT NULL references Date(id_date),
id_location int NOT NULL references Location(id_location),
id_variant int NOT NULL references variant(id_variante),
total_seq_mois int,
total_seq_annee int,
constraint [PK_Covariant] Primary key NONclustered ([id_date], [id_location], [id_variant])
)
GO

CREATE TABLE virus(
id_virus int identity NOT NULL Primary key,
new_case int,
new_test int,
new_death int,
)
GO

CREATE TABLE Covid19(
id_date int NOT NULL references Date(id_date),
id_location int NOT NULL references location(id_location),
id_virus int NOT NULL references virus(id_virus),
total_case int,
total_death int,
total_test int,
constraint [PK_Covid19] Primary key NONclustered ([id_date], [id_location], [id_virus])
)
GO