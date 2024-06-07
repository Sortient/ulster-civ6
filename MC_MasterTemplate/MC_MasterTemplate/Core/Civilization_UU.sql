INSERT INTO Types
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_SORTIENT_ULSTER_RIFLES',	'KIND_TRAIT'	),
		('UNIT_SORTIENT_ULSTER_RIFLES',					'KIND_UNIT'		),
		('ABILITY_SORTIENT_ULSTER_RIFLES',				'KIND_ABILITY'	);
	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_SORTIENT_ULSTER_RIFLES',		'ABILITY_CLASS'	);
		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_SORTIENT_ULSTER_RIFLES',		'CLASS_SORTIENT_ULSTER_RIFLES'	),
		('ABILITY_SORTIENT_ULSTER_RIFLES',	'CLASS_SORTIENT_ULSTER_RIFLES'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_SORTIENT_ULSTER_RIFLES',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_INFANTRY';

		
INSERT INTO Traits
		(TraitType,								Name,								Description								)
VALUES	('TRAIT_CIVILIZATION_SORTIENT_ULSTER_RIFLES',	'LOC_UNIT_SORTIENT_ULSTER_RIFLES_NAME',		'LOC_UNIT_SORTIENT_ULSTER_RIFLES_DESCRIPTION'	);

		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_SORTIENT_ULSTER',		'TRAIT_CIVILIZATION_SORTIENT_ULSTER_RIFLES'		);

	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_SORTIENT_ULSTER_RIFLES',	-- UnitType
		'LOC_UNIT_SORTIENT_ULSTER_RIFLES_NAME',	-- Name
		'LOC_UNIT_SORTIENT_ULSTER_RIFLES_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_SORTIENT_ULSTER_RIFLES', -- TraitType
		BaseMoves,
		Cost - 20,
		PurchaseYield,
		AdvisorType,
		Combat + 5,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance + 1,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_INFANTRY';

		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_SORTIENT_ULSTER_RIFLES',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_INFANTRY';

		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_SORTIENT_ULSTER_RIFLES',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_INFANTRY';
		
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_SORTIENT_ULSTER_RIFLES',	'UNIT_INFANTRY'		);
INSERT INTO ModifierArguments		
		(ModifierId,										Name,						Value	)
VALUES	('MODIFIER_ULSTER_RIFLES_FRIENDLY_TERRITORY_STRENGTH',			'Amount',					10		);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)	
	VALUES
		('PLAYER_ULSTER_FRIENDLY_BONUS', 'REQUIREMENTSET_TEST_ALL');
		
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)	
	VALUES
		('PLAYER_ULSTER_FRIENDLY_BONUS', 'REQUIRES_ULSTER_ON_FRIENDLY_TERRITORY');

INSERT INTO Requirements (RequirementId, RequirementType)	
	VALUES
		('REQUIRES_ULSTER_ON_FRIENDLY_TERRITORY', 'REQUIREMENT_UNIT_IN_OWNER_TERRITORY');


INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_SORTIENT_ULSTER_RIFLES',		'MODIFIER_ULSTER_RIFLES_FRIENDLY_TERRITORY_STRENGTH'	);


INSERT INTO ModifierStrings
		(ModifierId,									Context,		Text							)
VALUES	('MODIFIER_ULSTER_RIFLES_FRIENDLY_TERRITORY_STRENGTH',		'Preview',		'LOC_ABILITY_SORTIENT_ULSTER_RIFLES'		);



INSERT INTO UnitAbilities
		(UnitAbilityType,											Name,										Description						)
VALUES	('ABILITY_SORTIENT_ULSTER_RIFLES',	'LOC_UNIT_SORTIENT_ULSTER_RIFLES_NAME',		'LOC_ABILITY_SORTIENT_ULSTER_RIFLES_DESCRIPTION'		);

	
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,									OwnerRequirementSetId		)
VALUES	('MODIFIER_ULSTER_RIFLES_FRIENDLY_TERRITORY_STRENGTH',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'PLAYER_HAS_GOLDEN_AGE'		);

