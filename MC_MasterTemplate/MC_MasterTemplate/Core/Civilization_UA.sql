

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
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS',		'MODIFIER_SORTIENT_LINENOPOLIS_SHRINE_YIELD'		),
		('TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS',		'MODIFIER_SORTIENT_LINENOPOLIS_TEMPLE_YIELD'		);


INSERT INTO	Modifiers
		(ModifierId,											ModifierType,											RunOnce,		Permanent	)
VALUES	('MODIFIER_SORTIENT_LINENOPOLIS_SHRINE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			),
		('MODIFIER_SORTIENT_LINENOPOLIS_TEMPLE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			);


INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_SORTIENT_LINENOPOLIS_SHRINE_YIELD',			'BuildingType',					'BUILDING_SHRINE'							),
		('MODIFIER_SORTIENT_LINENOPOLIS_SHRINE_YIELD',			'YieldType',					'YIELD_PRODUCTION'							),
		('MODIFIER_SORTIENT_LINENOPOLIS_SHRINE_YIELD',			'Amount',						2											),
		('MODIFIER_SORTIENT_LINENOPOLIS_TEMPLE_YIELD',			'BuildingType',					'BUILDING_TEMPLE'							),
		('MODIFIER_SORTIENT_LINENOPOLIS_TEMPLE_YIELD',			'YieldType',					'YIELD_PRODUCTION'							),
		('MODIFIER_SORTIENT_LINENOPOLIS_TEMPLE_YIELD',			'Amount',						2											);