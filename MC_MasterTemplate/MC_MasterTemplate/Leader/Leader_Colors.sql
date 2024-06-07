/*
	Leader Colours
	Authors: MC
*/

-----------------------------------------------
-- PlayerColors

-- This assigns the civilization's colours to the leader - when selecting the leader, this will control the order in which the colour-combinations appear (with PrimaryColor and SecondaryColor representing the default values).

-- These eight colour references are locally-defined values, taken straight from the code section above. Again, as we only have one leader, we simply match the order.
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_SORTIENT_JOHN_HUME', -- Type
		'Unique', -- Usage
		'COLOR_SORTIENT_ULSTER_C_PRIMARY', -- PrimaryColor
		'COLOR_SORTIENT_ULSTER_C_SECONDARY', -- SecondaryColor
		'COLOR_SORTIENT_ULSTER_B_PRIMARY', -- Alt1PrimaryColor
		'COLOR_SORTIENT_ULSTER_B_SECONDARY', -- Alt1SecondaryColor
		'COLOR_SORTIENT_ULSTER_A_PRIMARY', -- Alt2PrimaryColor
		'COLOR_SORTIENT_ULSTER_A_SECONDARY', -- Alt2SecondaryColor
		'COLOR_SORTIENT_ULSTER_D_PRIMARY', -- Alt3PrimaryColor
		'COLOR_SORTIENT_ULSTER_D_SECONDARY' -- Alt3SecondaryColor
		);