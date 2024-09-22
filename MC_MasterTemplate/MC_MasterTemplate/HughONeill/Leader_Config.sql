
INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SORTIENT_ULSTER', -- CivilizationType
		'LOC_CIVILIZATION_SORTIENT_ULSTER_NAME', -- CivilizationName
		'ICON_CIVILIZATION_SORTIENT_ULSTER', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_SORTIENT_LINENOPOLIS_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_SORTIENT_ULSTER', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_SORTIENT_HUGH_ONEILL', -- LeaderType
		'LOC_LEADER_SORTIENT_HUGH_ONEILL_NAME', -- LeaderName
		'ICON_LEADER_SORTIENT_HUGH_ONEILL', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_SORTIENT_FLIGHT_OF_THE_EARLS_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_SORTIENT_FLIGHT_OF_THE_EARLS_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_SORTIENT_HUGH_ONEILL' -- LeaderAbilityIcon
		);


INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SORTIENT_ULSTER', -- CivilizationType
		'LEADER_SORTIENT_HUGH_ONEILL', -- LeaderType
		'UNIT_SORTIENT_ULSTER_RIFLES', -- Type
		'ICON_UNIT_SORTIENT_ULSTER_RIFLES', -- Icon
		'LOC_UNIT_SORTIENT_ULSTER_RIFLES_NAME', -- Name
		'LOC_UNIT_SORTIENT_ULSTER_RIFLES_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SORTIENT_ULSTER', -- CivilizationType
		'LEADER_SORTIENT_HUGH_ONEILL', -- LeaderType
		'BUILDING_ULSTER_LINEN_MILL', -- Type
		'ICON_BUILDING_ULSTER_LINEN_MILL', -- Icon
		'LOC_BUILDING_ULSTER_LINEN_MILL_NAME', -- Name
		'LOC_BUILDING_ULSTER_LINEN_MILL_DESCRIPTION', -- Description
		20 -- SortIndex
		);