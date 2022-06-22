USE DB_Covid19
Go



CREATE TABLE Covid(
id int identity NOT NULL primary key,
continent nvarchar(50),
country nvarchar(50),
date nvarchar(50),
new_Cases int,
total_Cases Bigint,
new_Deaths int,
total_Deaths Bigint,
new_Tests int,
total_Tests Bigint,
population Bigint,
)
GO