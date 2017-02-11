-- Operazione di generaione del SQL per Postgis
-- Data i creazione dello script:Thu Jul 09 19:16:37 CEST 2015
-- Specifica:GeoSmartCity Building Data Model
-- Specifica identificatore:
-- Specifica numero di versione:2.1
-- Specifica data di creazione:05 maggio 2015  - 15:02:14
-- Specifica data di ultima modifica:09 luglio 2015  - 19:15:00
-- Specifica stato:work in progress ( 01 agosto 2014  - 19:25:00 )
-- Dps nome:Gsc_postgis
-- Dps data di creazione:14 maggio 2015  - 11:22:46
-- Dps Spatial Reference System:EPSG:3044
-- Dps nome del modello implementativo:SQL_ESF_FLAT_MONO
-- Dps versione del modello implementativo:1.0
-- Dps database del modello implementativo:PostGIS
-- Dps implementazione sottoaree B3D:2D
-- Dps implementazione eventi - stratti - sottoaree:non connessi
-- Saranno create:
-- 	4 tabelle per le classi
-- 	21 tabelle per la trascodifica dei domini
-- 	0 tabelle segment event subregion
-- 	9 tabelle per i datatype
-- 	5 tabelle di supporto ad attributi multivalore
-- 	0 tabelle per gli strati topologici
-- 	0 tabelle per ruoli e associzioni
-- 	0 tabelle per codifica dei valori nulli
-- 	0 tabelle per le geometrie esterne e aggregati
-- 	0 tabelle per le geometrie collassate


-- 
-- Generazione tabelle per la trascodifica dei domini
-- 


-- 
-- CREATE TABLE: d_occupancytype
-- Rappresenta la tabella di trascodifica del dominio: Occupancy type value - OCCUPANCYTYPE
-- 

CREATE TABLE d_occupancytype (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_type_value
-- Rappresenta la tabella di trascodifica del dominio: Type value - TYPE_VALUE
-- 

CREATE TABLE d_type_value (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: h_currentuse
-- Rappresenta la tabella di trascodifica del dominio gerarchico: Current use value - CURRENTUSE
-- 

CREATE TABLE h_currentuse (
	code  varchar(80) NOT NULL,
	name  varchar(850),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: h_energysource
-- Rappresenta la tabella di trascodifica del dominio gerarchico: Energy source value - ENERGYSOURCE
-- 

CREATE TABLE h_energysource (
	code  varchar(80) NOT NULL,
	name  varchar(850),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_clge
-- Rappresenta la tabella di trascodifica del dominio: Clge official area reference value - CLGE
-- 

CREATE TABLE d_clge (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_rooftype
-- Rappresenta la tabella di trascodifica del dominio: Roof type value - ROOFTYPE
-- 

CREATE TABLE d_rooftype (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_elevationreference
-- Rappresenta la tabella di trascodifica del dominio: Elevation reference - ELEVATIONREFERENCE
-- 

CREATE TABLE d_elevationreference (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_perf_class
-- Rappresenta la tabella di trascodifica del dominio: Energy performance class - PERF_CLASS
-- 

CREATE TABLE d_perf_class (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_buildingnature
-- Rappresenta la tabella di trascodifica del dominio: Building nature value - BUILDINGNATURE
-- 

CREATE TABLE d_buildingnature (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_conditionofconstruction
-- Rappresenta la tabella di trascodifica del dominio: Condition of construction value - CONDITIONOFCONSTRUCTION
-- 

CREATE TABLE d_conditionofconstruction (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: h_uom
-- Rappresenta la tabella di trascodifica del dominio gerarchico: Unit of measure - UOM
-- 

CREATE TABLE h_uom (
	code  varchar(80) NOT NULL,
	name  varchar(850),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_installationnature
-- Rappresenta la tabella di trascodifica del dominio: Installation nature value - INSTALLATIONNATURE
-- 

CREATE TABLE d_installationnature (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: h_ownershiptype
-- Rappresenta la tabella di trascodifica del dominio gerarchico: Ownership type value - OWNERSHIPTYPE
-- 

CREATE TABLE h_ownershiptype (
	code  varchar(80) NOT NULL,
	name  varchar(850),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_energyuse
-- Rappresenta la tabella di trascodifica del dominio: Energy use value - ENERGYUSE
-- 

CREATE TABLE d_energyuse (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: h_location
-- Rappresenta la tabella di trascodifica del dominio gerarchico: Location - LOCATION
-- 

CREATE TABLE h_location (
	code  varchar(80) NOT NULL,
	name  varchar(850),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_buildingtype
-- Rappresenta la tabella di trascodifica del dominio: Building type - BUILDINGTYPE
-- 

CREATE TABLE d_buildingtype (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_material
-- Rappresenta la tabella di trascodifica del dominio: Material value - MATERIAL
-- 

CREATE TABLE d_material (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_refurbishmentlevel
-- Rappresenta la tabella di trascodifica del dominio: Refurbishment level - REFURBISHMENTLEVEL
-- 

CREATE TABLE d_refurbishmentlevel (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_energytype
-- Rappresenta la tabella di trascodifica del dominio: Energy type value - ENERGYTYPE
-- 

CREATE TABLE d_energytype (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_heatingsystem
-- Rappresenta la tabella di trascodifica del dominio: Heating system value - HEATINGSYSTEM
-- 

CREATE TABLE d_heatingsystem (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- CREATE TABLE: d_heightstatus
-- Rappresenta la tabella di trascodifica del dominio: Height status value - HEIGHTSTATUS
-- 

CREATE TABLE d_heightstatus (
	code  varchar(80) NOT NULL,
	name  varchar(160),
	definition  varchar(1200),
	alphacode  varchar(80)
);

-- 
-- Generazione tabelle per le classi
-- 


-- 
-- CREATE TABLE: installation
-- Rappresenta la classe: Installation - INSTALLATION
-- 

CREATE TABLE installation (
	classid  varchar(70) NOT NULL,
	condition  varchar(80) NOT NULL,
	date_activation  date ,
	date_c_beginning  numeric(15,0) ,
	date_c_end  numeric(15,0) ,
	date_r_beginning  numeric(15,0) ,
	date_r_end  numeric(15,0) ,
	elev_ref  varchar(80),
	energy_estimated  double precision ,
	energy_produced  double precision ,
	height_height_low  varchar(80),
	height_height_ref  varchar(80) NOT NULL,
	height_height_stat  varchar(80) NOT NULL,
	height_height_val  double precision ,
	identifier_id_loc  varchar(40),
	identifier_id_name  varchar(40),
	identifier_id_vers  varchar(40),
	installation_nature  varchar(80) NOT NULL,
	lifespan_beginning  numeric(15,0) ,
	lifespan_end  numeric(15,0) ,
	name  varchar(100),
	ownership  varchar(80),
	power  double precision ,
	purpose  varchar(40),
	surface  double precision ,
	type  varchar(80)
);
select addgeometrycolumn ('', 'installation', 'geometry2d', '3044', 'POINT', 2); 


-- 
-- CREATE TABLE: thermalzone
-- Rappresenta la classe: Thermal zone (building part) - THERMALZONE
-- 

CREATE TABLE thermalzone (
	classid  varchar(70) NOT NULL,
	energyperformance_perf_class  varchar(80),
	energyperformance_perf_date  date ,
	energyperformance_perf_method  varchar(100),
	energyperformance_perf_uom  varchar(80),
	energyperformance_perf_value  numeric(15,0) ,
	occupants_occ_value  numeric(15,0) ,
	occupants_occ_type  varchar(80),
	volume_source  varchar(40),
	volume_value  double precision ,
	tz2bdg  varchar(70) NOT NULL
);

-- 
-- CREATE TABLE: conversion
-- Rappresenta la classe: Conversion class - CONVERSION
-- 

CREATE TABLE conversion (
	classid  varchar(70) NOT NULL,
	input  varchar(80) NOT NULL,
	location  varchar(80),
	output  varchar(80) NOT NULL,
	value  double precision  NOT NULL,
	year  date 
);

-- 
-- CREATE TABLE: buildings
-- Rappresenta la classe: Buildings - BUILDINGS
-- 

CREATE TABLE buildings (
	classid  varchar(70) NOT NULL,
	buildingtype  varchar(80),
	condition  varchar(80) NOT NULL,
	connection_electricity  char(1) ,
	connection_gas  char(1) ,
	connection_sewage  char(1) ,
	connection_thermal  char(1) ,
	connection_water  char(1) ,
	date_c_beginning  numeric(15,0) ,
	date_c_end  numeric(15,0) ,
	date_r_beginning  numeric(15,0) ,
	date_r_end  numeric(15,0) ,
	dist_floor  varchar(40) NOT NULL,
	elev_ref  varchar(80),
	floors  numeric(15,0) ,
	height_height_low  varchar(80),
	height_height_ref  varchar(80) NOT NULL,
	height_height_stat  varchar(80) NOT NULL,
	height_height_val  double precision ,
	h_floor  double precision ,
	identifier_id_loc  varchar(40),
	identifier_id_name  varchar(40),
	identifier_id_vers  varchar(40),
	inst_meter  char(1) ,
	inst_photov  char(1) ,
	inst_solar  char(1) ,
	inst_thrplant  char(1) ,
	lifespan_beginning  numeric(15,0) ,
	lifespan_end  numeric(15,0) ,
	name  varchar(100),
	nature  varchar(80),
	occupants  numeric(15,0) ,
	ownership  varchar(80),
	refurbish  varchar(80),
	roof_type  varchar(80),
	units  numeric(15,0) ,
	use_s  varchar(80) NOT NULL,
	vert_surf  double precision ,
	volume_source  varchar(40),
	volume_value  double precision 
);
select addgeometrycolumn ('', 'buildings', 'geometry2d', '3044', 'MULTIPOLYGON', 2); 


-- 
-- Generazione tabelle per le geometrie esterne o aggegati
-- 


-- 
-- Generazione tabelle per le geometrie collassate
-- 


-- 
-- Generazione tabelle per i datatype
-- 


-- 
-- CREATE TABLE: thermalzone_energyamount_t
-- Rappresenta il datatype: Energy amount - EnergyAmount
-- 

CREATE TABLE thermalzone_energyamount_t (
	classref  varchar(70) NOT NULL,
	energyamount_e_amount  double precision ,
	energyamount_e_source  varchar(80) NOT NULL,
	energyamount_e_type  varchar(80) NOT NULL,
	energyamount_e_use  varchar(80) NOT NULL,
	energyamount_e_year  date ,
	energyamount_e_uom  varchar(80) NOT NULL,
	energyamount_estimatedco2  double precision 
);

-- 
-- CREATE TABLE: buildings_energyamount_t
-- Rappresenta il datatype: Energy amount - EnergyAmount
-- 

CREATE TABLE buildings_energyamount_t (
	classref  varchar(70) NOT NULL,
	energyamount_e_amount  double precision ,
	energyamount_e_source  varchar(80) NOT NULL,
	energyamount_e_type  varchar(80) NOT NULL,
	energyamount_e_use  varchar(80) NOT NULL,
	energyamount_e_year  date ,
	energyamount_e_uom  varchar(80) NOT NULL,
	energyamount_estimatedco2  double precision 
);

-- 
-- CREATE TABLE: installation_ext_ref_t
-- Rappresenta il datatype: External reference - EXT_REF
-- 

CREATE TABLE installation_ext_ref_t (
	classref  varchar(70) NOT NULL,
	ext_ref_identifier  varchar(100),
	ext_ref_inf_sys_name  varchar(100),
	ext_ref_reference  varchar(40)
);

-- 
-- CREATE TABLE: thermalzone_officialarea_t
-- Rappresenta il datatype: Official area - OFF_AREA
-- 

CREATE TABLE thermalzone_officialarea_t (
	classref  varchar(70) NOT NULL,
	officialarea_area_ref  varchar(80) NOT NULL,
	officialarea_value  double precision 
);

-- 
-- CREATE TABLE: buildings_ext_ref_t
-- Rappresenta il datatype: External reference - EXT_REF
-- 

CREATE TABLE buildings_ext_ref_t (
	classref  varchar(70) NOT NULL,
	ext_ref_identifier  varchar(100),
	ext_ref_inf_sys_name  varchar(100),
	ext_ref_reference  varchar(40)
);

-- 
-- CREATE TABLE: installation_elevation_t
-- Rappresenta il datatype: Elevation - ELEVATION
-- 

CREATE TABLE installation_elevation_t (
	classref  varchar(70) NOT NULL,
	elevation_elev_val  numeric(15,0) ,
	elevation_elevationreference  varchar(80)
);

-- 
-- CREATE TABLE: buildings_use_m_t
-- Rappresenta il datatype: Current use - CURR_USE
-- 

CREATE TABLE buildings_use_m_t (
	classref  varchar(70) NOT NULL,
	use_m_currentuse  varchar(80) NOT NULL,
	use_m_percentage  numeric(15,0) 
);

-- 
-- CREATE TABLE: buildings_elevation_t
-- Rappresenta il datatype: Elevation - ELEVATION
-- 

CREATE TABLE buildings_elevation_t (
	classref  varchar(70) NOT NULL,
	elevation_elev_val  numeric(15,0) ,
	elevation_elevationreference  varchar(80)
);

-- 
-- CREATE TABLE: buildings_renewable_potentia_t
-- Rappresenta il datatype: Renewable energy potential - RENEWABLEPOTENTIAL
-- 

CREATE TABLE buildings_renewable_potentia_t (
	classref  varchar(70) NOT NULL,
	renewable_poten_renewable_sour  varchar(80) NOT NULL,
	renewable_potential_value  double precision 
);

-- 
-- Generazione tabelle di supporto ad attributi multivalore
-- 


-- 
-- CREATE TABLE: thermalzone_heatingsystem
-- Rappresenta la tabella di appoggio per l'attributo multivalore: heatingsystem - heatingSystem
-- 

CREATE TABLE thermalzone_heatingsystem (
	classref  varchar(70) NOT NULL,
	heatingsystem  varchar(80) NOT NULL
);

-- 
-- CREATE TABLE: thermalzone_heatingsource
-- Rappresenta la tabella di appoggio per l'attributo multivalore: heatingsource - heatingSource
-- 

CREATE TABLE thermalzone_heatingsource (
	classref  varchar(70) NOT NULL,
	heatingsource  varchar(80) NOT NULL
);

-- 
-- CREATE TABLE: buildings_structure_mat
-- Rappresenta la tabella di appoggio per l'attributo multivalore: material of structure - STRUCTURE_MAT
-- 

CREATE TABLE buildings_structure_mat (
	classref  varchar(70) NOT NULL,
	structure_mat  varchar(80) NOT NULL
);

-- 
-- CREATE TABLE: buildings_facade_mat
-- Rappresenta la tabella di appoggio per l'attributo multivalore: material of facade - FACADE_MAT
-- 

CREATE TABLE buildings_facade_mat (
	classref  varchar(70) NOT NULL,
	facade_mat  varchar(80) NOT NULL
);

-- 
-- CREATE TABLE: buildings_roof_mat
-- Rappresenta la tabella di appoggio per l'attributo multivalore: material of roof - ROOF_MAT
-- 

CREATE TABLE buildings_roof_mat (
	classref  varchar(70) NOT NULL,
	roof_mat  varchar(80) NOT NULL
);

-- 
-- Generazione tabelle per la trascodifica dei domini
-- 


-- 
-- DOMAIN CONSTRAINT: d_occupancytype
-- PRIMARY KEY per la tabella di trascodifica del dominio : Occupancy type value - OCCUPANCYTYPE
-- 

ALTER TABLE d_occupancytype ADD CONSTRAINT d_occupancytype_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_type_value
-- PRIMARY KEY per la tabella di trascodifica del dominio : Type value - TYPE_VALUE
-- 

ALTER TABLE d_type_value ADD CONSTRAINT d_type_value_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: h_currentuse
-- PRIMARY KEY per la tabella di trascodifica del dominio : Current use value - CURRENTUSE
-- 

ALTER TABLE h_currentuse ADD CONSTRAINT h_currentuse_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: h_energysource
-- PRIMARY KEY per la tabella di trascodifica del dominio : Energy source value - ENERGYSOURCE
-- 

ALTER TABLE h_energysource ADD CONSTRAINT h_energysource_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_clge
-- PRIMARY KEY per la tabella di trascodifica del dominio : Clge official area reference value - CLGE
-- 

ALTER TABLE d_clge ADD CONSTRAINT d_clge_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_rooftype
-- PRIMARY KEY per la tabella di trascodifica del dominio : Roof type value - ROOFTYPE
-- 

ALTER TABLE d_rooftype ADD CONSTRAINT d_rooftype_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_elevationreference
-- PRIMARY KEY per la tabella di trascodifica del dominio : Elevation reference - ELEVATIONREFERENCE
-- 

ALTER TABLE d_elevationreference ADD CONSTRAINT d_elevationreference_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_perf_class
-- PRIMARY KEY per la tabella di trascodifica del dominio : Energy performance class - PERF_CLASS
-- 

ALTER TABLE d_perf_class ADD CONSTRAINT d_perf_class_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_buildingnature
-- PRIMARY KEY per la tabella di trascodifica del dominio : Building nature value - BUILDINGNATURE
-- 

ALTER TABLE d_buildingnature ADD CONSTRAINT d_buildingnature_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_conditionofconstruction
-- PRIMARY KEY per la tabella di trascodifica del dominio : Condition of construction value - CONDITIONOFCONSTRUCTION
-- 

ALTER TABLE d_conditionofconstruction ADD CONSTRAINT d_conditionofconstruction_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: h_uom
-- PRIMARY KEY per la tabella di trascodifica del dominio : Unit of measure - UOM
-- 

ALTER TABLE h_uom ADD CONSTRAINT h_uom_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_installationnature
-- PRIMARY KEY per la tabella di trascodifica del dominio : Installation nature value - INSTALLATIONNATURE
-- 

ALTER TABLE d_installationnature ADD CONSTRAINT d_installationnature_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: h_ownershiptype
-- PRIMARY KEY per la tabella di trascodifica del dominio : Ownership type value - OWNERSHIPTYPE
-- 

ALTER TABLE h_ownershiptype ADD CONSTRAINT h_ownershiptype_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_energyuse
-- PRIMARY KEY per la tabella di trascodifica del dominio : Energy use value - ENERGYUSE
-- 

ALTER TABLE d_energyuse ADD CONSTRAINT d_energyuse_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: h_location
-- PRIMARY KEY per la tabella di trascodifica del dominio : Location - LOCATION
-- 

ALTER TABLE h_location ADD CONSTRAINT h_location_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_buildingtype
-- PRIMARY KEY per la tabella di trascodifica del dominio : Building type - BUILDINGTYPE
-- 

ALTER TABLE d_buildingtype ADD CONSTRAINT d_buildingtype_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_material
-- PRIMARY KEY per la tabella di trascodifica del dominio : Material value - MATERIAL
-- 

ALTER TABLE d_material ADD CONSTRAINT d_material_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_refurbishmentlevel
-- PRIMARY KEY per la tabella di trascodifica del dominio : Refurbishment level - REFURBISHMENTLEVEL
-- 

ALTER TABLE d_refurbishmentlevel ADD CONSTRAINT d_refurbishmentlevel_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_energytype
-- PRIMARY KEY per la tabella di trascodifica del dominio : Energy type value - ENERGYTYPE
-- 

ALTER TABLE d_energytype ADD CONSTRAINT d_energytype_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_heatingsystem
-- PRIMARY KEY per la tabella di trascodifica del dominio : Heating system value - HEATINGSYSTEM
-- 

ALTER TABLE d_heatingsystem ADD CONSTRAINT d_heatingsystem_PK PRIMARY KEY (code);


-- 
-- DOMAIN CONSTRAINT: d_heightstatus
-- PRIMARY KEY per la tabella di trascodifica del dominio : Height status value - HEIGHTSTATUS
-- 

ALTER TABLE d_heightstatus ADD CONSTRAINT d_heightstatus_PK PRIMARY KEY (code);


-- 
-- Generazione PK e FK per le classi
-- 


-- 
-- TABLE CONSTRAINT: installation
-- PRIMARY KEY per la tabella della classe : Installation - INSTALLATION
-- 

ALTER TABLE installation ADD CONSTRAINT installation_PK PRIMARY KEY (classid);


-- 
-- TABLE CONSTRAINT: thermalzone
-- PRIMARY KEY per la tabella della classe : Thermal zone (building part) - THERMALZONE
-- 

ALTER TABLE thermalzone ADD CONSTRAINT thermalzone_PK PRIMARY KEY (classid);


-- 
-- TABLE CONSTRAINT: conversion
-- PRIMARY KEY per la tabella della classe : Conversion class - CONVERSION
-- 

ALTER TABLE conversion ADD CONSTRAINT conversion_PK PRIMARY KEY (classid);


-- 
-- TABLE CONSTRAINT: buildings
-- PRIMARY KEY per la tabella della classe : Buildings - BUILDINGS
-- 

ALTER TABLE buildings ADD CONSTRAINT buildings_PK PRIMARY KEY (classid);


-- 
-- TABLE CONSTRAINT: installation
-- FOREIGN KEY per la tabella della classe : Installation - INSTALLATION
-- 

ALTER TABLE installation ADD CONSTRAINT installation_FK1 FOREIGN KEY (condition) REFERENCES  d_conditionofconstruction (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK2 FOREIGN KEY (elev_ref) REFERENCES  d_elevationreference (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK3 FOREIGN KEY (height_height_low) REFERENCES  d_elevationreference (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK4 FOREIGN KEY (height_height_ref) REFERENCES  d_elevationreference (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK5 FOREIGN KEY (height_height_stat) REFERENCES  d_heightstatus (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK6 FOREIGN KEY (installation_nature) REFERENCES  d_installationnature (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK7 FOREIGN KEY (ownership) REFERENCES  h_ownershiptype (code) ;
ALTER TABLE installation ADD CONSTRAINT installation_FK8 FOREIGN KEY (type) REFERENCES  d_type_value (code) ;


-- 
-- TABLE CONSTRAINT: thermalzone
-- FOREIGN KEY per la tabella della classe : Thermal zone (building part) - THERMALZONE
-- 

ALTER TABLE thermalzone ADD CONSTRAINT thermalzone_FK1 FOREIGN KEY (energyperformance_perf_class) REFERENCES  d_perf_class (code) ;
ALTER TABLE thermalzone ADD CONSTRAINT thermalzone_FK2 FOREIGN KEY (energyperformance_perf_uom) REFERENCES  h_uom (code) ;
ALTER TABLE thermalzone ADD CONSTRAINT thermalzone_FK3 FOREIGN KEY (occupants_occ_type) REFERENCES  d_occupancytype (code) ;
ALTER TABLE thermalzone ADD CONSTRAINT thermalzone_FK4 FOREIGN KEY (tz2bdg) REFERENCES  buildings (classid) ;


-- 
-- TABLE CONSTRAINT: conversion
-- FOREIGN KEY per la tabella della classe : Conversion class - CONVERSION
-- 

ALTER TABLE conversion ADD CONSTRAINT conversion_FK1 FOREIGN KEY (input) REFERENCES  h_uom (code) ;
ALTER TABLE conversion ADD CONSTRAINT conversion_FK2 FOREIGN KEY (location) REFERENCES  h_location (code) ;
ALTER TABLE conversion ADD CONSTRAINT conversion_FK3 FOREIGN KEY (output) REFERENCES  h_uom (code) ;


-- 
-- TABLE CONSTRAINT: buildings
-- FOREIGN KEY per la tabella della classe : Buildings - BUILDINGS
-- 

ALTER TABLE buildings ADD CONSTRAINT buildings_FK1 FOREIGN KEY (buildingtype) REFERENCES  d_buildingtype (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK2 FOREIGN KEY (condition) REFERENCES  d_conditionofconstruction (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK3 FOREIGN KEY (elev_ref) REFERENCES  d_elevationreference (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK4 FOREIGN KEY (height_height_low) REFERENCES  d_elevationreference (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK5 FOREIGN KEY (height_height_ref) REFERENCES  d_elevationreference (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK6 FOREIGN KEY (height_height_stat) REFERENCES  d_heightstatus (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK7 FOREIGN KEY (nature) REFERENCES  d_buildingnature (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK8 FOREIGN KEY (ownership) REFERENCES  h_ownershiptype (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK9 FOREIGN KEY (refurbish) REFERENCES  d_refurbishmentlevel (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK10 FOREIGN KEY (roof_type) REFERENCES  d_rooftype (code) ;
ALTER TABLE buildings ADD CONSTRAINT buildings_FK11 FOREIGN KEY (use_s) REFERENCES  h_currentuse (code) ;


-- 
-- Generazione PK e FK per attributi multivalore
-- 


-- 
-- TABLE CONSTRAINT: thermalzone_heatingsystem
-- FOREIGN KEY per la tabella dell'attributo multivalore : heatingsystem - heatingSystem
-- 

ALTER TABLE thermalzone_heatingsystem ADD CONSTRAINT thermalzone_heatingsystem_FK1 FOREIGN KEY (classref) REFERENCES  thermalzone (classid) ;
ALTER TABLE thermalzone_heatingsystem ADD CONSTRAINT thermalzone_heatingsystem_FK2 FOREIGN KEY (heatingsystem) REFERENCES  d_heatingsystem (code) ;
ALTER TABLE thermalzone_heatingsystem ADD CONSTRAINT thermalzone_heatingsystem_PK PRIMARY KEY (classref ,heatingsystem );


-- 
-- TABLE CONSTRAINT: thermalzone_heatingsource
-- FOREIGN KEY per la tabella dell'attributo multivalore : heatingsource - heatingSource
-- 

ALTER TABLE thermalzone_heatingsource ADD CONSTRAINT thermalzone_heatingsource_FK1 FOREIGN KEY (classref) REFERENCES  thermalzone (classid) ;
ALTER TABLE thermalzone_heatingsource ADD CONSTRAINT thermalzone_heatingsource_FK2 FOREIGN KEY (heatingsource) REFERENCES  h_energysource (code) ;
ALTER TABLE thermalzone_heatingsource ADD CONSTRAINT thermalzone_heatingsource_PK PRIMARY KEY (classref ,heatingsource );


-- 
-- TABLE CONSTRAINT: buildings_structure_mat
-- FOREIGN KEY per la tabella dell'attributo multivalore : material of structure - STRUCTURE_MAT
-- 

ALTER TABLE buildings_structure_mat ADD CONSTRAINT buildings_structure_mat_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_structure_mat ADD CONSTRAINT buildings_structure_mat_FK2 FOREIGN KEY (structure_mat) REFERENCES  d_material (code) ;
ALTER TABLE buildings_structure_mat ADD CONSTRAINT buildings_structure_mat_PK PRIMARY KEY (classref ,structure_mat );


-- 
-- TABLE CONSTRAINT: buildings_facade_mat
-- FOREIGN KEY per la tabella dell'attributo multivalore : material of facade - FACADE_MAT
-- 

ALTER TABLE buildings_facade_mat ADD CONSTRAINT buildings_facade_mat_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_facade_mat ADD CONSTRAINT buildings_facade_mat_FK2 FOREIGN KEY (facade_mat) REFERENCES  d_material (code) ;
ALTER TABLE buildings_facade_mat ADD CONSTRAINT buildings_facade_mat_PK PRIMARY KEY (classref ,facade_mat );


-- 
-- TABLE CONSTRAINT: buildings_roof_mat
-- FOREIGN KEY per la tabella dell'attributo multivalore : material of roof - ROOF_MAT
-- 

ALTER TABLE buildings_roof_mat ADD CONSTRAINT buildings_roof_mat_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_roof_mat ADD CONSTRAINT buildings_roof_mat_FK2 FOREIGN KEY (roof_mat) REFERENCES  d_material (code) ;
ALTER TABLE buildings_roof_mat ADD CONSTRAINT buildings_roof_mat_PK PRIMARY KEY (classref ,roof_mat );


-- 
-- Generazione PK e FK per i datatype
-- 


-- 
-- TABLE CONSTRAINT: thermalzone_energyamount_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Energy amount - EnergyAmount
-- 

ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_FK1 FOREIGN KEY (classref) REFERENCES  thermalzone (classid) ;
ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_FK2 FOREIGN KEY (energyamount_e_source) REFERENCES  h_energysource (code) ;
ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_FK3 FOREIGN KEY (energyamount_e_type) REFERENCES  d_energytype (code) ;
ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_FK4 FOREIGN KEY (energyamount_e_use) REFERENCES  d_energyuse (code) ;
ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_FK5 FOREIGN KEY (energyamount_e_uom) REFERENCES  h_uom (code) ;
ALTER TABLE thermalzone_energyamount_t ADD CONSTRAINT thermalzone_energyamount_t_PK PRIMARY KEY (classref ,energyamount_e_amount ,energyamount_e_source ,energyamount_e_type ,energyamount_e_use ,energyamount_e_year ,energyamount_e_uom ,energyamount_estimatedco2 );


-- 
-- TABLE CONSTRAINT: buildings_energyamount_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Energy amount - EnergyAmount
-- 

ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_FK2 FOREIGN KEY (energyamount_e_source) REFERENCES  h_energysource (code) ;
ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_FK3 FOREIGN KEY (energyamount_e_type) REFERENCES  d_energytype (code) ;
ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_FK4 FOREIGN KEY (energyamount_e_use) REFERENCES  d_energyuse (code) ;
ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_FK5 FOREIGN KEY (energyamount_e_uom) REFERENCES  h_uom (code) ;
ALTER TABLE buildings_energyamount_t ADD CONSTRAINT buildings_energyamount_t_PK PRIMARY KEY (classref ,energyamount_e_amount ,energyamount_e_source ,energyamount_e_type ,energyamount_e_use ,energyamount_e_year ,energyamount_e_uom ,energyamount_estimatedco2 );


-- 
-- TABLE CONSTRAINT: installation_ext_ref_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: External reference - EXT_REF
-- 

ALTER TABLE installation_ext_ref_t ADD CONSTRAINT installation_ext_ref_t_FK1 FOREIGN KEY (classref) REFERENCES  installation (classid) ;
ALTER TABLE installation_ext_ref_t ADD CONSTRAINT installation_ext_ref_t_PK PRIMARY KEY (classref ,ext_ref_identifier ,ext_ref_inf_sys_name ,ext_ref_reference );


-- 
-- TABLE CONSTRAINT: thermalzone_officialarea_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Official area - OFF_AREA
-- 

ALTER TABLE thermalzone_officialarea_t ADD CONSTRAINT thermalzone_officialarea_t_FK1 FOREIGN KEY (classref) REFERENCES  thermalzone (classid) ;
ALTER TABLE thermalzone_officialarea_t ADD CONSTRAINT thermalzone_officialarea_t_FK2 FOREIGN KEY (officialarea_area_ref) REFERENCES  d_clge (code) ;
ALTER TABLE thermalzone_officialarea_t ADD CONSTRAINT thermalzone_officialarea_t_PK PRIMARY KEY (classref ,officialarea_area_ref ,officialarea_value );


-- 
-- TABLE CONSTRAINT: buildings_ext_ref_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: External reference - EXT_REF
-- 

ALTER TABLE buildings_ext_ref_t ADD CONSTRAINT buildings_ext_ref_t_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_ext_ref_t ADD CONSTRAINT buildings_ext_ref_t_PK PRIMARY KEY (classref ,ext_ref_identifier ,ext_ref_inf_sys_name ,ext_ref_reference );


-- 
-- TABLE CONSTRAINT: installation_elevation_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Elevation - ELEVATION
-- 

ALTER TABLE installation_elevation_t ADD CONSTRAINT installation_elevation_t_FK1 FOREIGN KEY (classref) REFERENCES  installation (classid) ;
ALTER TABLE installation_elevation_t ADD CONSTRAINT installation_elevation_t_FK2 FOREIGN KEY (elevation_elevationreference) REFERENCES  d_elevationreference (code) ;
ALTER TABLE installation_elevation_t ADD CONSTRAINT installation_elevation_t_PK UNIQUE (classref ,elevation_elev_val ,elevation_elevationreference );


-- 
-- TABLE CONSTRAINT: buildings_use_m_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Current use - CURR_USE
-- 

ALTER TABLE buildings_use_m_t ADD CONSTRAINT buildings_use_m_t_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_use_m_t ADD CONSTRAINT buildings_use_m_t_FK2 FOREIGN KEY (use_m_currentuse) REFERENCES  h_currentuse (code) ;
ALTER TABLE buildings_use_m_t ADD CONSTRAINT buildings_use_m_t_PK PRIMARY KEY (classref ,use_m_currentuse ,use_m_percentage );


-- 
-- TABLE CONSTRAINT: buildings_elevation_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Elevation - ELEVATION
-- 

ALTER TABLE buildings_elevation_t ADD CONSTRAINT buildings_elevation_t_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_elevation_t ADD CONSTRAINT buildings_elevation_t_FK2 FOREIGN KEY (elevation_elevationreference) REFERENCES  d_elevationreference (code) ;
ALTER TABLE buildings_elevation_t ADD CONSTRAINT buildings_elevation_t_PK UNIQUE (classref ,elevation_elev_val ,elevation_elevationreference );


-- 
-- TABLE CONSTRAINT: buildings_renewable_potentia_t
-- PRIMARY KEY e FOREIGN KEY per la tabella delle associzione binaria con attributi: Renewable energy potential - RENEWABLEPOTENTIAL
-- 

ALTER TABLE buildings_renewable_potentia_t ADD CONSTRAINT buildings_renewable_potent_FK1 FOREIGN KEY (classref) REFERENCES  buildings (classid) ;
ALTER TABLE buildings_renewable_potentia_t ADD CONSTRAINT buildings_renewable_potent_FK2 FOREIGN KEY (renewable_poten_renewable_sour) REFERENCES  h_energysource (code) ;
ALTER TABLE buildings_renewable_potentia_t ADD CONSTRAINT buildings_renewable_potenti_PK PRIMARY KEY (classref ,renewable_poten_renewable_sour ,renewable_potential_value );


-- 
-- Generazione degli index per le FK per le classi
-- 


-- 
-- TABLE INDEX: installation
-- INDEX per la tabella della classe : Installation - INSTALLATION
-- 

CREATE INDEX installation_IN1 ON installation(condition);

CREATE INDEX installation_IN2 ON installation(elev_ref);

CREATE INDEX installation_IN3 ON installation(height_height_low);

CREATE INDEX installation_IN4 ON installation(height_height_ref);

CREATE INDEX installation_IN5 ON installation(height_height_stat);

CREATE INDEX installation_IN6 ON installation(installation_nature);

CREATE INDEX installation_IN7 ON installation(ownership);

CREATE INDEX installation_IN8 ON installation(type);



-- 
-- TABLE INDEX: thermalzone
-- INDEX per la tabella della classe : Thermal zone (building part) - THERMALZONE
-- 

CREATE INDEX thermalzone_IN1 ON thermalzone(energyperformance_perf_class);

CREATE INDEX thermalzone_IN2 ON thermalzone(energyperformance_perf_uom);

CREATE INDEX thermalzone_IN3 ON thermalzone(occupants_occ_type);

CREATE INDEX thermalzone_IN4 ON thermalzone(tz2bdg);



-- 
-- TABLE INDEX: conversion
-- INDEX per la tabella della classe : Conversion class - CONVERSION
-- 

CREATE INDEX conversion_IN1 ON conversion(input);

CREATE INDEX conversion_IN2 ON conversion(location);

CREATE INDEX conversion_IN3 ON conversion(output);



-- 
-- TABLE INDEX: buildings
-- INDEX per la tabella della classe : Buildings - BUILDINGS
-- 

CREATE INDEX buildings_IN1 ON buildings(buildingtype);

CREATE INDEX buildings_IN2 ON buildings(condition);

CREATE INDEX buildings_IN3 ON buildings(elev_ref);

CREATE INDEX buildings_IN4 ON buildings(height_height_low);

CREATE INDEX buildings_IN5 ON buildings(height_height_ref);

CREATE INDEX buildings_IN6 ON buildings(height_height_stat);

CREATE INDEX buildings_IN7 ON buildings(nature);

CREATE INDEX buildings_IN8 ON buildings(ownership);

CREATE INDEX buildings_IN9 ON buildings(refurbish);

CREATE INDEX buildings_IN10 ON buildings(roof_type);

CREATE INDEX buildings_IN11 ON buildings(use_s);



-- 
-- Generazione degli index per le FK per attributi multivalore
-- 


-- 
-- TABLE INDEX: thermalzone_heatingsystem
-- INDEX per la tabella dell'attributo multivalore : heatingsystem - heatingSystem
-- 

CREATE INDEX thermalzone_heatingsystem_IN1 ON thermalzone_heatingsystem(classref);

CREATE INDEX thermalzone_heatingsystem_IN2 ON thermalzone_heatingsystem(heatingsystem);



-- 
-- TABLE INDEX: thermalzone_heatingsource
-- INDEX per la tabella dell'attributo multivalore : heatingsource - heatingSource
-- 

CREATE INDEX thermalzone_heatingsource_IN1 ON thermalzone_heatingsource(classref);

CREATE INDEX thermalzone_heatingsource_IN2 ON thermalzone_heatingsource(heatingsource);



-- 
-- TABLE INDEX: buildings_structure_mat
-- INDEX per la tabella dell'attributo multivalore : material of structure - STRUCTURE_MAT
-- 

CREATE INDEX buildings_structure_mat_IN1 ON buildings_structure_mat(classref);

CREATE INDEX buildings_structure_mat_IN2 ON buildings_structure_mat(structure_mat);



-- 
-- TABLE INDEX: buildings_facade_mat
-- INDEX per la tabella dell'attributo multivalore : material of facade - FACADE_MAT
-- 

CREATE INDEX buildings_facade_mat_IN1 ON buildings_facade_mat(classref);

CREATE INDEX buildings_facade_mat_IN2 ON buildings_facade_mat(facade_mat);



-- 
-- TABLE INDEX: buildings_roof_mat
-- INDEX per la tabella dell'attributo multivalore : material of roof - ROOF_MAT
-- 

CREATE INDEX buildings_roof_mat_IN1 ON buildings_roof_mat(classref);

CREATE INDEX buildings_roof_mat_IN2 ON buildings_roof_mat(roof_mat);



-- 
-- Generazione degli index per le FK per i datatype
-- 


-- 
-- TABLE INDEX: thermalzone_energyamount_t
-- INDEX per la tabella delle associzione binaria con attributi: Energy amount - EnergyAmount
-- 

CREATE INDEX thermalzone_energyamount_t_IN1 ON thermalzone_energyamount_t(classref);

CREATE INDEX thermalzone_energyamount_t_IN2 ON thermalzone_energyamount_t(energyamount_e_source);

CREATE INDEX thermalzone_energyamount_t_IN3 ON thermalzone_energyamount_t(energyamount_e_type);

CREATE INDEX thermalzone_energyamount_t_IN4 ON thermalzone_energyamount_t(energyamount_e_use);

CREATE INDEX thermalzone_energyamount_t_IN5 ON thermalzone_energyamount_t(energyamount_e_uom);



-- 
-- TABLE INDEX: buildings_energyamount_t
-- INDEX per la tabella delle associzione binaria con attributi: Energy amount - EnergyAmount
-- 

CREATE INDEX buildings_energyamount_t_IN1 ON buildings_energyamount_t(classref);

CREATE INDEX buildings_energyamount_t_IN2 ON buildings_energyamount_t(energyamount_e_source);

CREATE INDEX buildings_energyamount_t_IN3 ON buildings_energyamount_t(energyamount_e_type);

CREATE INDEX buildings_energyamount_t_IN4 ON buildings_energyamount_t(energyamount_e_use);

CREATE INDEX buildings_energyamount_t_IN5 ON buildings_energyamount_t(energyamount_e_uom);



-- 
-- TABLE INDEX: installation_ext_ref_t
-- INDEX per la tabella delle associzione binaria con attributi: External reference - EXT_REF
-- 

CREATE INDEX installation_ext_ref_t_IN1 ON installation_ext_ref_t(classref);



-- 
-- TABLE INDEX: thermalzone_officialarea_t
-- INDEX per la tabella delle associzione binaria con attributi: Official area - OFF_AREA
-- 

CREATE INDEX thermalzone_officialarea_t_IN1 ON thermalzone_officialarea_t(classref);

CREATE INDEX thermalzone_officialarea_t_IN2 ON thermalzone_officialarea_t(officialarea_area_ref);



-- 
-- TABLE INDEX: buildings_ext_ref_t
-- INDEX per la tabella delle associzione binaria con attributi: External reference - EXT_REF
-- 

CREATE INDEX buildings_ext_ref_t_IN1 ON buildings_ext_ref_t(classref);



-- 
-- TABLE INDEX: installation_elevation_t
-- INDEX per la tabella delle associzione binaria con attributi: Elevation - ELEVATION
-- 

CREATE INDEX installation_elevation_t_IN1 ON installation_elevation_t(classref);

CREATE INDEX installation_elevation_t_IN2 ON installation_elevation_t(elevation_elevationreference);



-- 
-- TABLE INDEX: buildings_use_m_t
-- INDEX per la tabella delle associzione binaria con attributi: Current use - CURR_USE
-- 

CREATE INDEX buildings_use_m_t_IN1 ON buildings_use_m_t(classref);

CREATE INDEX buildings_use_m_t_IN2 ON buildings_use_m_t(use_m_currentuse);



-- 
-- TABLE INDEX: buildings_elevation_t
-- INDEX per la tabella delle associzione binaria con attributi: Elevation - ELEVATION
-- 

CREATE INDEX buildings_elevation_t_IN1 ON buildings_elevation_t(classref);

CREATE INDEX buildings_elevation_t_IN2 ON buildings_elevation_t(elevation_elevationreference);



-- 
-- TABLE INDEX: buildings_renewable_potentia_t
-- INDEX per la tabella delle associzione binaria con attributi: Renewable energy potential - RENEWABLEPOTENTIAL
-- 

CREATE INDEX buildings_renewable_potent_IN1 ON buildings_renewable_potentia_t(classref);

CREATE INDEX buildings_renewable_potent_IN2 ON buildings_renewable_potentia_t(renewable_poten_renewable_sour);



-- 
-- Generazione degli index spaziali per le classi
-- 


-- 
-- SPATIAL INDEX: installation
-- SPATIAL INDEX per la tabella della classe : Installation - INSTALLATION
-- 

CREATE INDEX installation_SI1 ON installation USING GIST (geometry2d);



-- 
-- SPATIAL INDEX: buildings
-- SPATIAL INDEX per la tabella della classe : Buildings - BUILDINGS
-- 

CREATE INDEX buildings_SI1 ON buildings USING GIST (geometry2d);



-- 
-- Generazione UNIQUE CONSTRAINT per le classi
-- 


-- 
-- Generazione delle insert per la trascodifica dei domini
-- 


-- 
-- INSERT INTO TABLE: d_occupancytype
-- Valori di trascodifica per il dominio: Occupancy type value - OCCUPANCYTYPE
-- 

INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('visitors','VISITORS','VISITORS',null);
INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('workers','WORKERS','WORKERS',null);
INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('residents','RESIDENTS','RESIDENTS',null);
INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('patients','PATIENTS','PATIENTS',null);
INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('other or combination','OTHER','OTHERORCOMBINATION',null);
INSERT INTO d_occupancytype (name,code,alphacode,definition) VALUES ('students','STUDENTS','STUDENTS',null);


-- 
-- INSERT INTO TABLE: d_type_value
-- Valori di trascodifica per il dominio: Type value - TYPE_VALUE
-- 

INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('other','OTHER','OTHER',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('bipv','BIPV','BIPV',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('on building','ONBUILDING','ONBUILDING',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('not integrated','NOTINTEGRATED','NOTINTEGRATED',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('on other construction','ONOTHERCONSTRUCTION','ONOTHERCONSTRUCTION',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('partially integrated','PARTIALLYINTEGRATED','PARTIALLYINTEGRATED',null);
INSERT INTO d_type_value (name,code,alphacode,definition) VALUES ('integrated','INTEGRATED','INTEGRATED',null);


-- 
-- INSERT INTO TABLE: h_currentuse
-- Valori di trascodifica per il dominio gerarchico: Current use value - CURRENTUSE
-- 

INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('ancillary','ancillary',null,'A building (or building component) of small size that is used only in connection with another larger building (or building component) and generally does not inherit the same function and characteristics as the building (or building component) it is 
linked to.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential','residential',null,'The building (or building component) is used for residential purpose.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential - individualresidence','individualResidence',null,'The building (or building component) hosts only one dwelling.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential - collectiveresidence','collectiveResidence',null,'The building (or building component) hosts more than one dwelling.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential - collectiveresidence - twodwellings','twoDwellings',null,'The building (or building component) hosts two dwellings.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential - collectiveresidence - morethantwodwelling','moreThanTwoDwelling',null,'The building (or building component) hosts at least 3 dwellings.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('residential - residenceforcommunities','residenceForCommunities',null,'The building (or building component) hosts a residence for communities.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('industrial','industrial',null,'The building (or building component) is used for secondary sector activities (industrial).');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('commerceandservices','commerceAndServices',null,'The building (or building component) is used for any service activities. 
This value addresses the buildings and building components dedicated to tertiary sector activities (commercial and services).');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('commerceandservices - office','office',null,'The building (or building component) hosts offices.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('commerceandservices - trade','trade',null,'The building (or building component) hosts trade activities.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('commerceandservices - publicservices','publicServices',null,'The building (or building component) hosts public services. Public services are tertiary services provided for the benefit of the citizens.');
INSERT INTO h_currentuse (name,code,alphacode,definition) VALUES ('agriculture','agriculture',null,'The building (or building component) is used for agricultural activities.');


-- 
-- INSERT INTO TABLE: h_energysource
-- Valori di trascodifica per il dominio gerarchico: Energy source value - ENERGYSOURCE
-- 

INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('liquidfuels','liquidFuels','LIQUIDFUELS','Liquid fuels include all sorts of liquids, petroleum, fuel oil etc.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('warmwaterorstream','warmwarmWaterOrStream','WARMWATERORSTREAM','Warm water or stream is generally distributed by central district heating.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('naturalgas','naturalGas','NATURALGAS','The source is fossil gas distributed by pipeline.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('straw','straw','STRAW','The source is solid biofuels from straw and agricultural waste.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable','renewable','RENEWABLE',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - solar','solar','SOLAR',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - hydro','hydro','HYDRO',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - wind','wind','WIND',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - geothermal','geothermal','GEOTHERMAL',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - biomass','biomass','BIOMASS',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('renewable - biofuel','biofuel','BIOFUEL',null);
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('solidfuels','solidFuels','SOLIDFUELS','Solid fuels include wood, charcoal, peat, coal, tablets and pellets made from wood.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('electricity','electricity','ELECTRICITY','The source is electricity distributed from power plant.');
INSERT INTO h_energysource (name,code,alphacode,definition) VALUES ('biogas','biogas','BIOGAS','Biogas may come from a local biogas plant or more rarely be produced on a household scale.');


-- 
-- INSERT INTO TABLE: d_clge
-- Valori di trascodifica per il dominio: Clge official area reference value - CLGE
-- 

INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('internalprimaryarea','internalPrimaryArea','INTERNALPRIMARYAREA','Internal primary area is the sum of all floor areas with a heightroom superior or equal to heightParameter and that are associated with the principal uses of the building.
Internal primary area includes: 
- in housing: living areas (dining rooms, bedrooms), toilet, areas (bathrooms, lavatories), interior space and passageways, storage areas... 
- in offices: work areas, meeting rooms, annexes, recreational areas, toilets, interior space and passageways...');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('internalresidualarea','internalResidualArea','INTERNALRESIDUALAREA','Internal residual area is the sum of all floor areas regardless of height that are not consistent with the principal use of the building.
Internal residual area includes in particular underground storage and archive rooms, cellars, parking garage, balconies, upper floor terraces, loggias.');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('internalotherarea','internalOtherArea','INTERNALOTHERAREA','Internal other area is the sum of all floor areas with a heightroom < heightParameter and that are associated with the main uses of the building.
Internal other areas includes in particular garages, passageways and non-enclosed covered area (canopies, car-ports, ...).');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('constructedarea','constructedArea','CONSTRUCTEDAREA','Constructed area is the difference between the external area and the internal area of the building or building unit.
NOTE: Constructed area is mainly used as technical data.');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('externalarea','externalArea','EXTERNALAREA','External area is the area within the outer perimeter boundary of a building or building unit, including any outer cladding, measured at floor level.
NOTE: External area is mainly used for spatial planning purpose.');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('internalservicearea','internalServiceArea','INTERNALSERVICEAREA','Internal service area is the sum of all floor areas used for building services, irrespective of their height or occupation.
Internal service area includes in particular lift shafts, stairwells, access ramps, maintenance and technical areas serving the building.');
INSERT INTO d_clge (name,code,alphacode,definition) VALUES ('internalarea','internalArea','INTERNALAREA','Internal area is the area within the interior perimeter of a building or building unit, measured above skirting-board level.
Internal area is mainly used as reference unit of measure in valuation, property transaction, renting and building management.');


-- 
-- INSERT INTO TABLE: d_rooftype
-- Valori di trascodifica per il dominio: Roof type value - ROOFTYPE
-- 

INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('hyperbolicparabaloidalroof','hyperbolicParabaloidalRoof','HYPERBOLICPARABALOIDALROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('pavilionroof','pavilionRoof','PAVILIONROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('domedroof','domedRoof','DOMEDROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('archroof','archRoof','ARCHROOF','archRoof');
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('mansardroof','mansardRoof','MANSARDROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('hippedroof','hippedRoof','HIPPEDROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('monopitchroof','monopitchRoof','MONOPITCHROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('dualpentroof','dualPentRoof','DUALPENTROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('flatroof','flatRoof','FLATROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('halfhippedroof','halfHippedRoof','HALFHIPPEDROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('gabledroof','gabledRoof','GABLEDROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('sawtoothroof','sawToothRoof','SAWTOOTHROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('pyramidalbroachroof','pyramidalBroachRoof','PYRAMIDALBROACHROOF',null);
INSERT INTO d_rooftype (name,code,alphacode,definition) VALUES ('conicalroof','conicalRoof','CONICALROOF',null);


-- 
-- INSERT INTO TABLE: d_elevationreference
-- Valori di trascodifica per il dominio: Elevation reference - ELEVATIONREFERENCE
-- 

INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('topofconstruction','topOfConstruction',null,'The elevation has been captured at the top level of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('highestpoint','highestPoint',null,'The elevation has been captured at the highest point of the construction, including the installations, such as chimneys and antennas.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('generaleave','generalEave',null,'The elevation has been captured at eave level, anywhere between the lowest and the highest eave levels of the construction');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('highestgroundpoint','highestGroundPoint',null,'The elevation has been captured at the highest ground point of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('generalground','generalGround',null,'The elevation has been captured at ground level, anywhere between the lowest and the highest ground points of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('lowesteave','lowestEave',null,'The elevation has been captured at the lowest eave level of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('highesteave','highestEave',null,'The elevation has been captured at the highest eave level of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('generalroof','generalRoof',null,'The elevation has been captured at roof level, anywhere between the lowest edge roof level and the top of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('abovegroundenvelope','aboveGroundEnvelope',null,'The elevation has been captured at the level of the maximum extent of the above ground envelope of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('lowestgroundpoint','lowestGroundPoint',null,'The elevation has been captured at the lowest ground point level of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('lowestflooraboveground','lowestFloorAboveGround',null,'The elevation has been captured at the level of the lowest floor above ground.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('highestroofedge','highestRoofEdge',null,'The elevation has been captured at the highest roof edge level of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('entrancepoint','entrancePoint',null,'The elevation has been captured at the entrance of the construction, generally the bottom of entrance door.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('lowestroofedge','lowestRoofEdge',null,'The elevation has been captured at the lowest roof edge level of the construction');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('bottomofconstruction','bottomOfConstruction',null,'The elevation has been captured at the bottom of the usable part of the construction.');
INSERT INTO d_elevationreference (name,code,alphacode,definition) VALUES ('generalroofedge','generalRoofEdge',null,'The elevation has been captured at roof edge level, anywhere between the lowest and the highest roof edges of the construction.');


-- 
-- INSERT INTO TABLE: d_perf_class
-- Valori di trascodifica per il dominio: Energy performance class - PERF_CLASS
-- 

INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('c','C','C','Third class according to the energy performance of the building.');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('a','A','A','First class according to the energy performance of the building (i.e. the most efficient buildings for energy performance).');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('b','B','B','Second class according to the energy performance of the building.');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('d','D','D','Fourth class according to the energy performance of the building.');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('f','F','F','Sixth class according to the energy performance of the building.');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('e','E','E','Fifth class according to the energy performance of the building.');
INSERT INTO d_perf_class (name,code,alphacode,definition) VALUES ('g','G','G','Seventh and last class according to the energy performance of the building (i.e. the least efficient buildings for energy performance).');


-- 
-- INSERT INTO TABLE: d_buildingnature
-- Valori di trascodifica per il dominio: Building nature value - BUILDINGNATURE
-- 

INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('windturbine','windTurbine',null,'A tower and associated equipment that generates electrical power from wind.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('canopy','canopy',null,'An overhead roof providing shelter to things below. 
Canopies may be free standing frameworks over which a covering is attached or may be linked or suspended to the outside of a building');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('mosque','mosque',null,'A building or structure whose primary purpose is to facilitate the muslim cult');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('greenhouse','greenhouse',null,'A building that is often constructed primarily of transparent material (for example: glass), in which temperature and humidity can be controlled for the cultivation and/or protection of plants.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('arch','arch','ARCH','A man-made structure in the form of an arch.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('synagogue','synagogue',null,'A building or structure whose primary purpose is to facilitate the israelit cult.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('windmill','windmill',null,'A building which converts the energy of the wind into rotational motion by means of adjustable sails or blades.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('temple','temple',null,'A building or structure whose primary purpose is to facilitate the meeting of a religious sect.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('chapel','chapel',null,'A Christian place of worship, usually smaller than a church.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('shed','shed',null,'A building of light construction, which usually has one or more open sides, that is typically used for storage.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('tower','tower',null,'A relatively tall, narrow structure that may either stand alone or may form part of another structure.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('lighthouse','lighthouse',null,'A tower designed to emit light from a system of lamps and lenses.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('church','church',null,'Building or structure whose primary aim is to facilitate the religious practice of a Christian community');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('castle','castle',null,'A large ornate or fortified building usually constructed for the purpose of a private residence or security');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('bunker','bunker',null,'A facility, partly underground, intended for or used by the military either for location of command/control centers or for troop encampment.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('silo','silo',null,'A large storage structure, generally cylindrical, used for storing loose materials.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('stadium','stadium',null,'A place or venue for sports, concerts or other events and consists of a field or stage either partly or completely surrounded by a structure designed to allow spectators to stand or sit and view the event.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('storagetank','storageTank',null,'A container usually for holding liquids and compressed gases.');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('dam','dam',null,'A permanent barrier across a watercourse used to impound water or to control its flow');
INSERT INTO d_buildingnature (name,code,alphacode,definition) VALUES ('cavebuilding','caveBuilding',null,'A space hosting human or economic activity which is usually enclosed within rock with the addition of man-made exterior walls and which may contain structures comparable to the interior structures of freestanding buildings');


-- 
-- INSERT INTO TABLE: d_conditionofconstruction
-- Valori di trascodifica per il dominio: Condition of construction value - CONDITIONOFCONSTRUCTION
-- 

INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('functional','functional','FUNCTIONAL','The construction is functional.
NOTE: The construction may be used under normal conditions for its current use value(s).');
INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('declined','declined','DECLINED','The construction cannot be used under normal conditions, though its main elements (walls, roof) are still present.
EXAMPLE: A house whose windows have been for a long time broken or walled up (even if occupied by squatters).');
INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('demolished','demolished','DEMOLISHED','The construction has been demolished. There are no more visible remains.');
INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('under construction','under construction','UNDER CONSTRUCTION','The construction is under construction and not yet functional. This applies only to the initial construction of the construction and not to maintenance work.');
INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('projected','projected','PROJECTED','The construction is being designed. Construction has not yet started.');
INSERT INTO d_conditionofconstruction (name,code,alphacode,definition) VALUES ('ruin','ruin','RUIN','The construction has been partly demolished and some main elements (roof, walls) have been destroyed. There are some visible remains of the construction.');


-- 
-- INSERT INTO TABLE: h_uom
-- Valori di trascodifica per il dominio gerarchico: Unit of measure - UOM
-- 

INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('volume','VOLUME',null,'Unit of measure for volumes.');
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('volume - cube meter','M3',null,null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('area','AREA',null,'Unit of measures for areas');
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('area - square feet','F2',null,null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('area - square meter','M2',null,null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy performance','E_Performance','ENERGYPERFORMANCE',null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy performance - kwh/m2/a (kwh per square meter / annum)','KWH-M2-A',null,'Kilowatt per hour for single square meter, at annual base');
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy performance - kwh/m3/a (kwh per cube meter / annum)','KWH-M3-A',null,'Kilowatt per hour for single cube meter, at annual base');
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy amount','E_Amount','ENERGYAMOUNT',null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy amount - watt hour','WH','WATTHOUR',null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy amount - kilowatt hour','KWH','KILOWATTHOUR',null);
INSERT INTO h_uom (name,code,alphacode,definition) VALUES ('energy amount - megawatt hour','MWH','MEGAWATTHOUR',null);


-- 
-- INSERT INTO TABLE: d_installationnature
-- Valori di trascodifica per il dominio: Installation nature value - INSTALLATIONNATURE
-- 

INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('photovoltaic panel','PHOTOVOLTAICPANEL','PHOTOVOLTAICPANEL',null);
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('cradle','cradle','CRADLE','A small suspended platform that can be moved up and down the outside of a high building, used by people cleaning or maintaining windows or facades, etc.
The cradles that are permanently installed in a building and may be used for emergency evacuation are of interest for INSPIRE.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('antenna','antenna','ANTENNA','A transducer designed to transmit or receive electromagnetic waves (includes radio and television masts, radar towers and satellite telecommunications).
Only antennas attached to buildings shall be considered as Installation. Self-standing antennas shall be considered as OtherConstruction');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('tower','tower','TOWER','A relatively tall, narrow structure that may either stand alone or may form part of another structure.
May be considered as installations only the small towers that form part of a building, especially if they are not attached to the ground. More significant and/or more independent towers shall be considered as Building or BuildingPart.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('arcade','arcade','ARCADE','An arcade is a covered passage, usually with shops on one or both sides.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('stairway','stairway','STAIRWAY','Stairway is a construction designed to bridge a large vertical distance by dividing it into smaller vertical distances, called steps. Stairways may be straight, round, or may consist of two or more straight pieces connected at angles.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('air duct','airDuct','AIRDUCT','Ducts for incoming (fresh) and outgoing (stale) air.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('externallift','externalLift','EXTERNALLIFT','Lift moving along the outside of a building.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('balcony','balcony','BALCONY','A balcony is a upper accessible platform within a storey, not fully enclosed by wall(s).');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('solarpanel','solarPanel','SOLARPANEL','A solar panel is a packaged, connected assembly of solar cells, also known as photovoltaic cells. The solar panel can be used as a component of a larger photovoltaic system to generate and supply electricity in commercial and residential applications.
Only the solar panels attached to the building should be considered as installations. The self-standing solar panels should be classified under OtherConstruction.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('railing','railing','RAILING','A handrail is a rail that is designed to be grasped by the hand so as to provide stability or support.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('air conditioning unit','airConditioningUnit','AIRCONDITIONINGUNIT','An air conditioning unit or air conditioner is a home appliance, system, or mechanism designed to dehumidify and extract heat from an area.
Only the external air conditioning units located outside the building shall be considered as Installation.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('chimney','chimney','CHIMNEY','A vertical structure containing a passage or flue for discharging smoke and gases of combustion.
Only chimneys attached to buildings shall be considered as Installation. Self-standing chimneys shall be considered as OtherConstruction.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('dormer','dormer','DORMER','A dormer is a structural element of a building that protrudes from the plane of a sloping roof surface. Dormers are used, either in original construction or as later additions, to create usable space in the roof of a building by adding headroom and usually also by enabling addition of windows.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('ramp','ramp','RAMP','A ramp is an inclined plane installed in addition to or instead of stairs. A ramp may generally be used by wheelchairs.');
INSERT INTO d_installationnature (name,code,alphacode,definition) VALUES ('windturbine','windTurbine','WINDTURBINE','A device that converts kinetic energy from the wind into mechanical energy.
Only the (generally small) wind turbines attached to or serving a building shall be classified under installations. The self-standing and generally big wind-turbines shall be classified under Building.');


-- 
-- INSERT INTO TABLE: h_ownershiptype
-- Valori di trascodifica per il dominio gerarchico: Ownership type value - OWNERSHIPTYPE
-- 

INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('non occupant private owner','NONOCCUPANTPRIVATE','NONOCCUPANTPRIVATEOWNER',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('other or combination','OTHER','OTHER',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('government','GOVERNMENT','GOVERNMENT',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('government - european','EUROPEAN',null,null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('government - municipal','MUNICIPAL','MUNICIPAL',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('government - regional','REGIONAL',null,null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('government - national state','NATIONAL',null,null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('non-profit organisation','NGO','NONPROFITORGANISATION',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('property management company','PROPERTYCOMPANY','PROPERTYCOMPANY',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('occupant private owner','OCCUPANTPRIVATE','OCCUPANTPRIVATEOWNER',null);
INSERT INTO h_ownershiptype (name,code,alphacode,definition) VALUES ('corporation','CORPORATION','CORPORATION',null);


-- 
-- INSERT INTO TABLE: d_energyuse
-- Valori di trascodifica per il dominio: Energy use value - ENERGYUSE
-- 

INSERT INTO d_energyuse (name,code,alphacode,definition) VALUES ('cooling','cooling','COOLING',null);
INSERT INTO d_energyuse (name,code,alphacode,definition) VALUES ('electrical appliances','electricalAppliances','ELECTRICALAPPLIANCES',null);
INSERT INTO d_energyuse (name,code,alphacode,definition) VALUES ('electrical equipments','electricalEquipments','ELECTRICALEQUIPMENTS',null);
INSERT INTO d_energyuse (name,code,alphacode,definition) VALUES ('domestic hot water','domesticHotWater','DOMESTICHOTWATER',null);
INSERT INTO d_energyuse (name,code,alphacode,definition) VALUES ('heating','heating','HEATING',null);


-- 
-- INSERT INTO TABLE: h_location
-- Valori di trascodifica per il dominio gerarchico: Location - LOCATION
-- 

INSERT INTO h_location (name,code,alphacode,definition) VALUES ('europe','EUROPE',null,null);
INSERT INTO h_location (name,code,alphacode,definition) VALUES ('europe - portugal','PT',null,null);
INSERT INTO h_location (name,code,alphacode,definition) VALUES ('europe - italy','IT',null,null);
INSERT INTO h_location (name,code,alphacode,definition) VALUES ('europe - italy - regione emilia-romagna','ITD',null,'ITD is the NUTS code for Regione Emilia-Romagna.');
INSERT INTO h_location (name,code,alphacode,definition) VALUES ('europe - greece','GR',null,null);
INSERT INTO h_location (name,code,alphacode,definition) VALUES ('world','WORLD',null,'Entire world');


-- 
-- INSERT INTO TABLE: d_buildingtype
-- Valori di trascodifica per il dominio: Building type - BUILDINGTYPE
-- 

INSERT INTO d_buildingtype (name,code,alphacode,definition) VALUES ('apartment block','AB','APARTMENTBLOCK',null);
INSERT INTO d_buildingtype (name,code,alphacode,definition) VALUES ('multifamilyhouse','MFH','MULTIFAMILYHOUSE',null);
INSERT INTO d_buildingtype (name,code,alphacode,definition) VALUES ('terraced house','TH','TERRACEDHOUSE',null);
INSERT INTO d_buildingtype (name,code,alphacode,definition) VALUES ('single family house','SFH','SINGLEFAMILYHOUSE',null);


-- 
-- INSERT INTO TABLE: d_material
-- Valori di trascodifica per il dominio: Material value - MATERIAL
-- 

INSERT INTO d_material (name,code,alphacode,definition) VALUES ('rublestonemasonry','rubleStoneMasonry','RUBLESTONEMASONRY','Ruble stone is field stone. Is a masonry technique that incorporates any material found or recovered, such as dressed blocks, broken fragments, brick or flint.
NOTE 1: The success of rubble depends on the thickness of the wall and the strength of the binding mortar. If either is too thin, the structure will fail. As it is almost impossible to construct a thin rubble wall, owing to the irregularity of the material and the size of the gaps to be filled by the mortar, in areas or building traditions lacking dressed stone and ashlar technology, rubble walls are likely to be very thick.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('woodshinglesorshakes','woodShinglesOrShakes','WOODSHINGLESORSHAKES','Wood shingles or shakes are differentiated by size and texture. Shingles are cut to a specific size and have smooth finish. Shakes are rough-textures and are irregular in shape.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('mudwalls','mudWalls','MUDWALLS','Mud walls may be made of stacked earth or poured earth. Stacked earth consists in forming balls of plastic soil, which are freshly stacked on each other. Poured earth walls on the other hand are erected between formwork using a sandy material with coarse to fine granular particles. The ultimate finish can be natural - from the formwork- or sand blasted.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('earth','earth','EARTH','Rammed earth or pneumatically impacted stabilized earth. Rammed earth construction (also referred to as tapial in Spanish, or else, pis? de terre, in France) is conducted by erecting wooden or metal forms for the walls and filling them with a moist cement stabilized earth mix which is compacted by pounding with hand tools (with conical or flat heads) or with a mechanical compactor. Metal rebar is often added to further increase ductility.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('precastconcrete','precastConcrete','PRECASTCONCRETE','Precast wall panel construction. Buildings of this type are low-rise structures with precast reinforced concrete wall panels that are often poured on the ground and tilted into place. Roofs are often composed of either plywood sheathing or metal decking, and glass curtain walls may exist at the building perimeter.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('reinforcedmasonry','reinforcedMasonry','REINFORCEDMASONRY','Buildings of this type have exterior walls consisting of grouted (with concrete) masonry (clay brick or concrete block masonry) with internal reinforcing steel rods.
Reinforced masonry buildings are relatively thick walled box-like structures and often have small windows and at least two mostly solid walls.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('naturalstone','naturalStone','NATURALSTONE','The facade is covered with natural stone, such as granite or marble, and may come in different colours and finishing.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('asbestos','asbestos','ASBESTOS','Facade constructed out of asbestos.
Set of six naturally occurring silicate minerals, which all have in common their eponymous asbestiform habit: long (roughly 1:20 aspect ratio), thin fibrous crystals, with each visible fiber composed of millions of microscopic "fibrils" that can be released by abrasion and other processes');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('ceramictiles','ceramicTiles','CERAMICTILES','Ceramic tiles of different colours and design are used for covering the facade of the building');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('firedbrickmasonry','firedBrickMasonry','FIREDBRICKMASONRY','Parts of slums/squatters. Informal constructions are non-engineered and are built by self-builders without any professional input (i.e. neither during the design phase, nor the construction one).');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('slate','slate','SLATE','Slate is a shingle-like sliver of rock or natural stone, offering a natural look laid out in a variety of patterns. It comes in different sizes and colours, although colours are limited to those found in nature.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('mobilehomes','mobileHomes','MOBILEHOMES','A structure designed or adapted for human habitation which is capable of being moved from one place to another (whether by being towed, or by being transported on a motor vehicle or trailer) and any motor vehicle so designed or adapted.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('limestone','limestone','LIMESTONE','The facade of the building is composed of limestone, a sedimentary rock composed largely of calcite and/or aragonite.
Limestone was commonly used for the construction of many medieval churches and castles in Europe, it was widely used in the 19th and early 20th centuries, and in countries like Malta, for a long time, the only building material available.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('steel','steel','STEEL','The load resisting system of the building is made of structural steel, which may be made composite with reinforced concrete at floor slabs. Steel structures may be constructed as moments resisting frames, as concentrically or eccentrically braced frames, or as spatial trusses. The members of the structure may be bolted or welded.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('hotmoppedasphalt','hotMoppedAsphalt','HOTMOPPEDASPHALT','Hot mopped asphalt roofing is usually applied to flat or semi-flat residential roofs that have good access and proper drainage.
NOTE: In residential use it is often covered with a layer of decorative stone to improve the appearance.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('wood','wood','WOOD','The facade of the building is covered with wood, timber or lumber');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('composite','composite','COMPOSITE','Composite material, such as plastics, PVC and fibreglass are used to cover the facade of the building');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('composition','composition','COMPOSITION','Composition shingles are the most widely used roofing material. They are also called asphalt shingles that could either be organic fibre mat or fibreglass core. Both types are steeped in asphalt and then coated with mineral granules to add colour and texture. Most shingles have an adhesive back that when reinforced with tacks, staples or nails for attaching on roof frames would result in a tight fit.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('vegetatedgreenroof','vegetatedGreenRoof','VEGETATEDGREENROOF','Also known as eco-roofs, a vegetated or green roof is a roof of a building that is partially or completely covered with vegetation and a growing medium, planted over a waterproofing membrane. It may also include additional layers such as a root barrier and drainage and irrigation systems.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('glass','glass','GLASS','The surface is constructed out of glass, typically used in roofs covering internal atriums or in greenhouses.
In case of facade, structural glass is used for glazing the facade of buildings through the use of curtain wall systems, frameless glazing systems, polycarbonate sheeting or architectural flat glass.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('corrugatedsheet','corrugatedSheet','CORRUGATEDSHEET','Roofs of corrugated sheet may be of fibreglass, PVC or metal; less frequent is the use of galvanized iron sheet.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('massivestonemasonry','massiveStoneMasonry','MASSIVESTONEMASONRY','Massive stone masonry with lime/cement mortar. Is constructed with a coursed double leaf masonry, with the outer layers of stonework levelled as the construction progresses and follows a well established masonry bond. The stone units are cut in regular dimensions. To improve the connection between cross walls better quality units are used for the bond in these areas.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('vegetated','vegetated','VEGETATED','The facade is covered with vegetation and a growing medium, planted over a waterproofing membrane');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('thatch','thatch','THATCH','Roofs are built by thatching, which is the craft of building a roof with dry vegetation such as straw, water reed, sedge, rushes and heather, layering the vegetation so as to shed water away from the inner roof.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('masonry','masonry','MASONRY','The facade consists of individual units made of fired clay brick or concrete block laid in and bound together by mortar.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('metal','metal','METAL','The surface of the building is covered with metal in the form of galvanized steel with paint, aluminium with paint, stainless steel, zinc, lead or copper.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('concretetile','concreteTile','CONCRETETILE','Roofing material consisting of shingles, simulated wood shakes, lighter-weight tiles and concrete panels manufactured from a variety of fibre-reinforced cement products.
NOTE 1: Some are coated with plastics, enamels, or thin metals, and some contain recycled material. 
NOTE 2: Many concrete tiles mimic the appearance of wood shakes, while improving on the durability and fire protection that real wood affords. It can approximate the look of clay tile or slate while mitigating the structural problems caused by the weight of the real material.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('adobeblockwalls','adobeBlockWalls','ADOBEBLOCKWALLS','Also known as moulded earth, is a building technique that involves the use of clay bricks (adobe) formed in moulds and (traditionally) dried in the sun.
NOTE: These unbaked bricks consist of sand, sometimes gravel, clay, water and often straw or grass mixed together by hand, formed in wooden moulds and dried by the sun. When machinery is not available, earth is manually tamped in the mould; else, mechanical compression is used (manual, or motorized presses), in order to accommodate large production outputs of compressed earth blocks.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('concrete','concrete','CONCRETE','The surface of the facade is constructed out of (reinforced, with bars or fibres-other than asbestos) concrete');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('adobe','adobe','ADOBE','Use of a particular type of masonry for the fa?ade, that involves the use of clay bricks (adobe) formed in moulds and (traditionally) dried in the sun.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('stonemasonryblock','stoneMasonryBlock','STONEMASONRYBLOCK','The load resisting system of the building is made of wood, timber or lumber.
Two systems of construction are possible, one based on a frame, the other on a skeleton. Framing is a building technique based around structural members, usually called studs, which provide a stable frame to which interior and exterior wall coverings are attached. In skeleton houses the posts and the horizontal crossbars form a frame (whose strength is sometimes increased by the use of additional diagonal bracings or stiffeners) that is filled in with wood (post or frame and plank constructions) or other materials such as clay, stone, or brick. This category is also known as timber framing or half-timbered.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('reinforcedconcrete','reinforcedConcrete','REINFORCEDCONCRETE','Roofs constructed out of reinforced concrete, normally along flat or semi-flat surfaces used in terraces or inclined roofs.
For facades and structures, the load resisting system is made of reinforced concrete, a combination of steel reinforcement bars embedded in concrete that act together in resisting forces. Reinforced concrete buildings may be constructed as moment resisting frames (beams and columns framing at nodes), or in combination with shear walls.');
INSERT INTO d_material (name,code,alphacode,definition) VALUES ('concreteblockmasonry','concreteBlockMasonry','CONCRETEBLOCKMASONRY','Unreinforced concrete block masonry, with lime/cement mortar.
Buildings of this type have perimeter walls, and possibly some interior walls, constructed of unreinforced concrete blocks joined with lime/cement mortar. These perimeter walls are sometimes used as load bearing walls and have no internal reinforcing steel rods. Anchor plates are sometimes used to tie the walls to the floors and roof and are conspicuous from the outside of the structure.');


-- 
-- INSERT INTO TABLE: d_refurbishmentlevel
-- Valori di trascodifica per il dominio: Refurbishment level - REFURBISHMENTLEVEL
-- 

INSERT INTO d_refurbishmentlevel (name,code,alphacode,definition) VALUES ('no refurbishment','norefurbishment','NOREFURBISHMENT','No refurbishment occurred for the building.');
INSERT INTO d_refurbishmentlevel (name,code,alphacode,definition) VALUES ('advanced','advanced','ADVANCED','High refurbishment occurred for the building.');
INSERT INTO d_refurbishmentlevel (name,code,alphacode,definition) VALUES ('standard','standard','STANDARD','Basic refurbishment occurred for the building.');


-- 
-- INSERT INTO TABLE: d_energytype
-- Valori di trascodifica per il dominio: Energy type value - ENERGYTYPE
-- 

INSERT INTO d_energytype (name,code,alphacode,definition) VALUES ('demand','demand','DEMAND',null);
INSERT INTO d_energytype (name,code,alphacode,definition) VALUES ('final','final','FINAL',null);
INSERT INTO d_energytype (name,code,alphacode,definition) VALUES ('primary','primary','PRIMARY',null);
INSERT INTO d_energytype (name,code,alphacode,definition) VALUES ('estimated','estimated','ESTIMATED',null);


-- 
-- INSERT INTO TABLE: d_heatingsystem
-- Valori di trascodifica per il dominio: Heating system value - HEATINGSYSTEM
-- 

INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('portablegasheating','portableGasHeating','PORTABLEGASHEATING','Heating is performed by a portable device using liquefied petroleum gas.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('solarheating','solarHeating','SOLARHEATING','The heating is performed by a solar collector heating the air or liquid based heating system.
This value is usually not used for solar cells producing electricity.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('districtheating','districtHeating','DISTRICTHEATING','The public heat network is connected to the central heating of the building by a heat exchanger. The warm water or steam used in the district heating system is not mixed with the water of the central heating system in the building.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('centralheating','centralHeating','CENTRALHEATING','Central heating system performed at building or at building unit level.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('electricraditors','electricRaditors','ELECTRICRADITORS','Electric radiators could be single portable units or an integrated installation of the building.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('heatpump','heatPump','HEATPUMP','The heating is performed by a heat pump that transfers thermal energy from an air source or geothermal source.
The device is sometimes connected to the central heating system in the building.');
INSERT INTO d_heatingsystem (name,code,alphacode,definition) VALUES ('stove','stove','STOVE','Stove includes all kinds of devices designed to burn solid fuel, traditionally wood etc. including masonry fireplaces, tile stoves and fire stoves made of cast iron.');


-- 
-- INSERT INTO TABLE: d_heightstatus
-- Valori di trascodifica per il dominio: Height status value - HEIGHTSTATUS
-- 

INSERT INTO d_heightstatus (name,code,alphacode,definition) VALUES ('estimated','estimated',null,'The height has been estimated and not measured.');
INSERT INTO d_heightstatus (name,code,alphacode,definition) VALUES ('measured','measured',null,'The height has been (directly or indirectly) measured');



-- 
-- Generazione completata in 0.442 secondi
-- 

