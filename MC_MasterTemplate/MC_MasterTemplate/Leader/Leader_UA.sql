

INSERT INTO	Types
		(Type,													Kind			)
VALUES	('TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT',			'KIND_TRAIT'	);


INSERT INTO	Traits
		(TraitType,										Name,															Description												)
VALUES	('TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT',	'LOC_TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT_NAME',	'LOC_TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT_DESCRIPTION'	);
		

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType								)
VALUES	('LEADER_SORTIENT_JOHN_HUME',	'TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT'	);


	-- Temp Table
	-------------------------------------
		DROP TABLE IF EXISTS Good_Friday_Agreement_Binary;
		CREATE TEMPORARY TABLE "Good_Friday_Agreement_Binary"(
			"Binary"			INT
		);

		INSERT INTO Good_Friday_Agreement_Binary
				(Binary)
		VALUES	(1),(2),(4),(8);

		DROP TABLE IF EXISTS Good_Friday_Agreement_Yields;
		CREATE TEMPORARY TABLE "Good_Friday_Agreement_Yields"(
			"YieldType" 	TEXT,
			"YieldShort" 	TEXT
		);

		INSERT INTO Good_Friday_Agreement_Yields
				(YieldType,				YieldShort)
		VALUES	("YIELD_SCIENCE",		"SCIENCE"),
				("YIELD_CULTURE",			"CULTURE"),
				("YIELD_DIPLOMATIC_FAVOR", "FAVOR");
	-------------------------------------
	-- TraitModifiers
	-------------------------------------
		INSERT INTO TraitModifiers
				(TraitType,									ModifierId)
		SELECT	'TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT',		'SORTIENT_GOOD_FRIDAY_AGREEMENT_'||YieldShort||'_'||Binary
		FROM Good_Friday_Agreement_Yields CROSS JOIN Good_Friday_Agreement_Binary;
	----------------------------------------------------------
	-- MODIFIERS
	----------------------------------------------------------
		-- Modifiers
		-------------------------------------
			INSERT INTO Modifiers
				(
					ModifierId,
					ModifierType,
					SubjectRequirementSetId
				)
			SELECT DISTINCT
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_'||YieldShort||'_'||Binary,
					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary
			FROM Good_Friday_Agreement_Yields CROSS JOIN Good_Friday_Agreement_Binary;
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
				(
					ModifierId,
					Name,
					Value
				)
			SELECT DISTINCT
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_'||YieldShort||'_'||Binary,
					'YieldType',
					YieldType
			FROM Good_Friday_Agreement_Yields CROSS JOIN Good_Friday_Agreement_Binary;

			INSERT INTO ModifierArguments
				(
					ModifierId,
					Name,
					Value
				)
			SELECT DISTINCT
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_'||YieldShort||'_'||Binary,
					'Amount',
					Binary * 10
			FROM Good_Friday_Agreement_Yields CROSS JOIN Good_Friday_Agreement_Binary;
	----------------------------------------------------------
	-- REQUIREMENTS
	----------------------------------------------------------
		-- RequirementSets
		-------------------------------------
			INSERT INTO RequirementSets
				(
					RequirementSetId,
					RequirementSetType
				)
			SELECT DISTINCT
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary,
					'REQUIREMENTSET_TEST_ALL'
			FROM Good_Friday_Agreement_Binary;
		-------------------------------------
		-- RequirementSetRequirements
		-------------------------------------
			INSERT INTO RequirementSetRequirements
				(
					RequirementSetId,
					RequirementId
				)
			SELECT DISTINCT
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary,
					'REQUIRE_SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary
			FROM Good_Friday_Agreement_Binary;
		-------------------------------------
		-- Requirements
		-------------------------------------
			INSERT INTO Requirements
				(
					RequirementId,
					RequirementType
				)
			SELECT DISTINCT
					'REQUIRE_SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary,
					'REQUIREMENT_PLOT_PROPERTY_MATCHES'
			FROM Good_Friday_Agreement_Binary;
		-------------------------------------
		-- RequirementArguments
		-------------------------------------
			INSERT INTO RequirementArguments
				(
					RequirementId,
					Name,
					Value
				)
			SELECT DISTINCT
					'REQUIRE_SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary,
					'PropertyName',
					'SORTIENT_GOOD_FRIDAY_AGREEMENT_'||Binary
			FROM Good_Friday_Agreement_Binary;

			INSERT INTO RequirementArguments
				(
					RequirementId,
					Name,
					Value
				)
			SELECT DISTINCT
					'REQUIRE_SORTIENT_GOOD_FRIDAY_AGREEMENT_PROPERTY_'||Binary,
					'PropertyMinimum',
					1
			FROM Good_Friday_Agreement_Binary;



INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES (
	'TRAIT_SORTIENT_JOHN_HUME_NO_HOLY_WARS',
	'MODIFIER_PLAYER_ADJUST_BANNED_DIPLOMATIC_ACTION'
);

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES (
    'TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT',
    'TRAIT_SORTIENT_JOHN_HUME_NO_HOLY_WARS' 
);

INSERT INTO ModifierArguments(ModifierId, Name, Value)
VALUES 	('TRAIT_SORTIENT_JOHN_HUME_NO_HOLY_WARS', 'Banned', '1'),
		('TRAIT_SORTIENT_JOHN_HUME_NO_HOLY_WARS', 'DiplomaticActionType', 'DIPLOACTION_DECLARE_HOLY_WAR');


