/*
	Civilization Badge Colours
	Authors: MC
*/

-----------------------------------------------
-- Colors

-- This configures four colour options for your custom civilization. All values are formatted as RGBA - with the A (Alpha) channel always set to 255.

-- In this file/section, all we are doing is defining the colours and giving them unique string 'names'. We'll assign them to our civilization (via our Leader) in a separate file (Leader_Colors.sql).
-----------------------------------------------

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_SORTIENT_ULSTER_A_PRIMARY',		'255,255,255,255'		),
		('COLOR_SORTIENT_ULSTER_A_SECONDARY',		'211,2,20,255'	),
		('COLOR_SORTIENT_ULSTER_B_PRIMARY',		'0,80,82,255'	),
		('COLOR_SORTIENT_ULSTER_B_SECONDARY',		'255,255,255,255'		),
		('COLOR_SORTIENT_ULSTER_C_PRIMARY',		'255,207,25,255'	),
		('COLOR_SORTIENT_ULSTER_C_SECONDARY',		'211,2,20,255'		),
		('COLOR_SORTIENT_ULSTER_D_PRIMARY',		'255,255,255,255'		),
		('COLOR_SORTIENT_ULSTER_D_SECONDARY',		'0,80,82,255'	);

