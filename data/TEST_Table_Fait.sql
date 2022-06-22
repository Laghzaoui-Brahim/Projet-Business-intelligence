/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id_date]
      ,[id_location]
      ,[id_variante]
      ,[total_seq_mois]
      ,[total_seq_annee]
  FROM [Covid_Variante].[dbo].[Covariante]

SELECT loc.nom_location, vr.nom_variante, dt.annee, dt.mois,dt.jour, cv.total_seq_mois
FROM  
[Covid_Variante].[dbo].Covariante as cv CROSS JOIN
[Covid_Variante].[dbo].[variante] as vr CROSS JOIN 
[Covid_Variante].[dbo].[location] as loc CROSS JOIN
[Covid_Variante].[dbo].[Date] as dt
where 
	dt.id_date = 1908669
	and loc.id_location = 1807973
	and vr.id_variante =  1865728
	and cv.id_date =1908669 and cv.id_location = 1807973 and cv.id_variante = 1865728
Go

select dt.annee, dt.mois,dt.jour from [Covid_Variante].[dbo].[Date] as dt where dt.id_date = 1908669
GO
select loc.nom_location from [Covid_Variante].[dbo].[location] as loc where id_location = 1807973
select  nom_variante from [Covid_Variante].[dbo].[variante] where id_variante = 1860115
