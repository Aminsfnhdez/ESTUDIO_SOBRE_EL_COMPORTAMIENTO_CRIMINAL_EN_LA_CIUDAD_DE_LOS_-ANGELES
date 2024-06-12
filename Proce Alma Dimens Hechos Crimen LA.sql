CREATE PROCEDURE migracionDatos
-- @fechaInicio date, @fechaFin date
AS
-- Insertar Información en la dimensión Area
INSERT INTO dimension_area(AreaID,AreaName)
SELECT distinct crimes.AreaID, crimes.AreaName
FROM crimes LEFT OUTER JOIN dimension_area ON dimension_area.AreaID=crimes.AreaID
WHERE dimension_area.AreaID IS NULL

-- Insertar Información en la dimensión Crime
INSERT INTO dimension_crime(CrimeID,CrimeName)
SELECT distinct crimes.CrimeID, crimes.CrimeName
FROM crimes LEFT OUTER JOIN dimension_crime ON dimension_crime.CrimeID=crimes.CrimeID
WHERE dimension_crime.CrimeID IS NULL

-- Insertar Información en la dimensión CrimeScene
INSERT INTO dimension_crimescene(CrimeSceneID,CrimeSceneName)
SELECT DISTINCT crimes.CrimeSceneID,crimes.CrimeSceneName
FROM crimes left OUTER JOIN dimension_crimescene ON dimension_crimescene.CrimeSceneID=crimes.CrimeSceneID
WHERE dimension_crimescene.CrimeSceneID IS NULL

-- Insertar Información en la dimensión WeaponUsed
INSERT INTO dimension_weaponused(WeaponUsedID,WeaponUsedName)
SELECT distinct crimes.WeaponUsedID, crimes.WeaponUsedName
FROM crimes LEFT OUTER JOIN dimension_weaponused ON dimension_weaponused.WeaponUsedID=crimes.WeaponUsedID
WHERE dimension_weaponused.WeaponUsedID IS NULL

-- Insertar Información en la dimensión Victim
INSERT INTO dimension_victim(ID,VictimAge,VictimSex,VictimDescent)
SELECT distinct crimes.ID, crimes.VictimAge, crimes.VictimSex, crimes.VictimDescent
FROM crimes LEFT OUTER JOIN dimension_victim ON dimension_victim.ID=crimes.ID
WHERE dimension_victim.ID IS NULL

-- Insertar Información en la tabla hecho_crimesla
INSERT INTO hecho_crimesla
(VictimID,RegisterID, AreaID, CrimeID, CrimeSceneID, WeaponUsedID, Date, Time)
SELECT crimes.ID, crimes.RegisterID, crimes.AreaID, crimes.CrimeID, crimes.CrimeSceneID, crimes.WeaponUsedID, crimes.Date, crimes.Time
FROM crimes
-- WHERE crimes.Date>=@fechaInicio and crimes.Date<=@fechaFin;

/*Ejecutando el algoritmo de Almacenado*/
EXECUTE migracionDatos '2020-01-01', '2024-03-31';
-- EXECUTE migracionDatos;
