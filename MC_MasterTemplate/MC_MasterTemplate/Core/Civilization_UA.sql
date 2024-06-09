

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS',		'KIND_TRAIT'	);


INSERT INTO	Traits	
		(TraitType,											Name,														Description														)
VALUES	('TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS',		'LOC_TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS_NAME',		'LOC_TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS_DESCRIPTION'	);
		

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_SORTIENT_ULSTER',		'TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS'	);


INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId									)
VALUES ('TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS', 'MODIFIER_SORTIENT_LINENOPOLIS_IMPROVED_LUXURY_YIELD');

INSERT INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES ('REQUIRES_PLOT_HAS_IMPROVED_LUXURY_SET', 'REQUIREMENTSET_TEST_ANY'); 

INSERT INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES ('REQUIRES_PLOT_HAS_IMPROVED_LUXURY_SET', 'REQUIRES_PLOT_HAS_IMPROVED_LUXURY');

INSERT INTO	Modifiers
		(ModifierId,																	ModifierType,											SubjectRequirementSetId)
VALUES	('MODIFIER_SORTIENT_LINENOPOLIS_IMPROVED_LUXURY_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',						'REQUIRES_PLOT_HAS_IMPROVED_LUXURY_SET'			);


INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_SORTIENT_LINENOPOLIS_IMPROVED_LUXURY_YIELD',			'YieldType',					'YIELD_PRODUCTION'							),
		('MODIFIER_SORTIENT_LINENOPOLIS_IMPROVED_LUXURY_YIELD',			'Amount',						10											);
