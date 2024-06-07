--==========================================================================================================================
-- BUILDINGS
--==========================================================================================================================
-- Types
----------------------

INSERT INTO Types	
		(Type,													Kind						)
VALUES	('TRAIT_CIVILIZATION_BUILDING_ULSTER_LINEN_MILL',		'KIND_TRAIT'				),
		('BUILDING_ULSTER_LINEN_MILL',							'KIND_BUILDING'			);


-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Infrastructure). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined in this document.
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_ULSTER_LINEN_MILL',	'CIVILIZATION_SORTIENT_ULSTER'		);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO Traits
		(TraitType,												Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_BUILDING_ULSTER_LINEN_MILL',		'LOC_BUILDING_ULSTER_LINEN_MILL_NAME',		'LOC_BUILDING_ULSTER_LINEN_MILL_DESCRIPTION'		);
----------------------
-- Buildings
----------------------
INSERT INTO Buildings
	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqDistrict,
		PrereqTech,
		PurchaseYield,
		Cost,
		Maintenance,
		Housing,
		CitizenSlots,
		RegionalRange,
		AdvisorType
	)
VALUES(
		'BUILDING_ULSTER_LINEN_MILL',
		'LOC_BUILDING_ULSTER_LINEN_MILL_NAME',
		'LOC_BUILDING_ULSTER_LINEN_MILL_DESCRIPTION',
		'TRAIT_CIVILIZATION_BUILDING_ULSTER_LINEN_MILL',
		'DISTRICT_INDUSTRIAL_ZONE',
		'TECH_INDUSTRIALIZATION',
		'YIELD_GOLD',
		312,
		2,
		2,
		2,
		6,
		'ADVISOR_GENERIC'
);

INSERT INTO BuildingReplaces
			(CivUniqueBuildingType,					ReplacesBuildingType)
VALUES		('BUILDING_ULSTER_LINEN_MILL',			'BUILDING_FACTORY');

INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
VALUES	('BUILDING_ULSTER_LINEN_MILL', 'BUILDING_WORKSHOP'),
		('BUILDING_POWER_PLANT', 'BUILDING_ULSTER_LINEN_MILL');

INSERT INTO Building_GreatPersonPoints (BuildingType, GreatPersonClassType, PointsPerTurn)
VALUES	('BUILDING_ULSTER_LINEN_MILL', 'GREAT_PERSON_CLASS_ENGINEER', 1);

INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange)
VALUES	('BUILDING_ULSTER_LINEN_MILL', 'YIELD_PRODUCTION', 4);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES	('BUILDING_ULSTER_LINEN_MILL', 'ELECTRONICSFACTORY_CULTURE');

----------------------
-- BuildingReplaces
----------------------

--==========================================================================================================================
-- +1 Loyalty.
--==========================================================================================================================
-- BuildingModifiers
--------------------------------------------------------------------
/*
INSERT INTO BuildingModifiers
				(BuildingType,							ModifierId)
SELECT DISTINCT	'BUILDING_ULSTER_LINEN_MILL',				ModifierId
FROM BuildingModifiers
	WHERE BuildingType = 'BUILDING_MONUMENT'
	AND ModifierId = 'MONUMENT_LOYALTY';

	INSERT INTO TraitModifiers			
(TraitType,													ModifierId								)
VALUES	('TRAIT_CIVILIZATION_BUILDING_ULSTER_LINEN_MILL', 		'ULSTER_LINEN_MILL_CULTURE'		);
*/
-------------------------------------
-- Modifiers

-- This section defines, for each of your modifiers, the type of modifier it is and the conditions under which it is applied.

-- The ModifierType is important - it governs the sphere of application of the effect(s) in question. It does this by having a defined pair of values linked to it - known as a CollectionType and an EffectType. The CollectionType instructs the game on which elements/items (all civilizations, one specific civilization, all cities of one civilization, etc) to apply the modifier, whilst the EffectType instructs the game as to what change to apply (grant more of a yield, increase combat strength, etc).

-- The naming convention for a ModifierType is typically: MODIFIER_COLLECTIONTYPE_EFFECTTYPE, where COLLECTIONTYPE and EFFECTTYPE cite the two parts that make up a modifier (explained directly above). I strongly recommend making use of existing ModifierType values until you are confident with creating your own. As a general principle, find an existing ability that is similar in construct to what you wish to achieve, look it up, identify the ModifierType it uses and then enter that into the ModifierType value(s) below.

-- There is an excellent guide available via CivFanatics that explains these concepts (and more) that I, once again, highly recommend:

-- https://forums.civfanatics.com/resources/using-modifiers-chapter-1-creating-and-attaching-modifiers.25683/ --

-- The ability we are configuring is to grant the player +1 Great Artist point for every city that has at least four Colossal Head improvements constructed. With that as our end goal, what follows are the various bits of logic required to stitch that together.

-- If you've already followed the walkthrough in Civilization_UA.sql, then the only 'new' concept introduced here is SubjectRequirementSetId. This is used to apply a set of criteria that must be met for the Modifier to be attached. Each section covers the logic applied individually.

-- You may also note that we are creating two Modifiers, here, despite only linking one to our trait. In this example, the second modifier is referenced by the first one (which has the MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER ModifierType). I'll detail how this works in the next code section.
-------------------------------------
/*
INSERT INTO Modifiers	
(ModifierId,										ModifierType,											SubjectRequirementSetId		)
VALUES	('ULSTER_LINEN_MILL_CULTURE',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'ULSTER_4_LINEN_MILL'		),
('ULSTER_LINEN_MILL_GREAT_ARTIST_POINT',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',			null						);

INSERT INTO Types
(Type,														Kind)
VALUES	('TRAIT_CIVILIZATION_BUILDING_SUK_PILLAR_TOMB',				'KIND_TRAIT');
*/