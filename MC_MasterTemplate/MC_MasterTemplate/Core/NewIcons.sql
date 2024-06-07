/*
	Civilization Icons

	Authors: MC
*/

-----------------------------------------------
-- IconTextureAtlases

-- We use a single document to define all of our new ICON elements. This keeps things in one place and acts as a nice 'checklist' for every icon file we'll need to ensure exists.

-- Briefly, we'll explain what the IconTextureAtlases are. An 'atlas', in this context, is a series of graphics that all contain icons of a certain type, albeit in different sizes. In our example template, we have four different atlases: the CIVILIZATION, the LEADER, the UNIQUE UNIT and the UNIQUE INFRASTRUCTURE.

-- The definitions below illustrate how each is defined.

-- Name: This defines the name of the atlas. This is the element that is referenced in other parts of this document.
-- IconSize: Fairly self-explanatory, but this is the width (or height) of one icon (within the atlas) in pixels. All icons (game-wide) have square dimensions (1:1).
-- IconsPerRow: This defines the number of icons there are across the entire width of the atlas file. The total width of the DDS file should be equal to IconSize x IconsPerRow. If you are creating every icon as a separate file, the value here will always be 1.
-- IconsPerColumn: This defines the number of icons there are along the entire height of the atlas file. The total height of the DDS file should be equal to IconSize x IconsPerColumn. If you are creating every icon as a separate file, the value here will always be 1.
-- Filename: Again, fairly self-explanatory. This should be the complete, case-sensitive name of the DDS file that pertains to the graphic for that entry. All files referenced here must be located in the root of the Textures folder.

-- A quick note on the ICON_ATLAS_SORTIENT_WEREJAGUAR atlas. I've left this in here, configured in this way, to illustrate how to use multi-icon atlases. In this example, each UlsterRiflesAtlasXXX.dds file has two icons - the Unique Unit icon and Unique Unit portrait. We'll describe further down how we differentiate to the game which should be used for which function through the IconDefinitions section.

-- Please note: I have included a sample configuration for the ICON_ATLAS_COLOSSAL_HEAD but you may note that this is not referenced in the IconDefinitions. The ICON_COLOSSAL_HEAD exists in the base-game and therefore this is just to illustrate which icon-sizes are required for an Improvement.
-----------------------------------------------

INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename					)
VALUES	('ICON_ATLAS_SORTIENT_ULSTER',					22,	 		1,				1,					'ICON_ULSTER_22.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					30,	 		1,				1,					'ICON_ULSTER_30.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					36,	 		1,				1,					'ICON_ULSTER_36.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					44,	 		1,				1,					'ICON_ULSTER_44.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					48,	 		1,				1,					'ICON_ULSTER_48.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					50,	 		1,				1,					'ICON_ULSTER_50.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					64,	 		1,				1,					'ICON_ULSTER_64.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					80,	 		1,				1,					'ICON_ULSTER_80.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					200, 		1,				1,					'ICON_ULSTER_200.dds'			),
		('ICON_ATLAS_SORTIENT_ULSTER',					256, 		1,				1,					'ICON_ULSTER_256.dds'			),

		('ICON_ATLAS_SORTIENT_JOHN_HUME',				32,	 		1,				1,					'ICON_JOHN_HUME_32.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				45,	 		1,				1,					'ICON_JOHN_HUME_45.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				48,	 		1,				1,					'ICON_JOHN_HUME_48.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				50,	 		1,				1,					'ICON_JOHN_HUME_50.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				55,	 		1,				1,					'ICON_JOHN_HUME_55.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				64,			1,				1,					'ICON_JOHN_HUME_64.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				80,	 		1,				1,					'ICON_JOHN_HUME_80.dds'			),
		('ICON_ATLAS_SORTIENT_JOHN_HUME',				256,	 	1,				1,					'ICON_JOHN_HUME_256.dds'			),
		
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			22,			2,				1,					'UlsterRiflesAtlas22.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			32,			2,				1,					'UlsterRiflesAtlas32.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			38,			2,				1,					'UlsterRiflesAtlas38.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			50,			2,				1,					'UlsterRiflesAtlas50.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			70,			2,				1,					'UlsterRiflesAtlas70.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			80,			2,				1,					'UlsterRiflesAtlas80.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			95,			2,				1,					'UlsterRiflesAtlas95.dds'		),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			200,		2,				1,					'UlsterRiflesAtlas200.dds'	),
		('ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			256,		2,				1,					'UlsterRiflesAtlas256.dds'	),
		
		('ICON_ATLAS_LINEN_MILL',			38,			1,				1,					'LinenMill38.dds'		),
		('ICON_ATLAS_LINEN_MILL',			40,			1,				1,					'LinenMill40.dds'		),
		('ICON_ATLAS_LINEN_MILL',			50,			1,				1,					'LinenMill50.dds'		),
		('ICON_ATLAS_LINEN_MILL',			80,			1,				1,					'LinenMill80.dds'		),
		('ICON_ATLAS_LINEN_MILL',			200,		1,				1,					'LinenMill200.dds'		),
		('ICON_ATLAS_LINEN_MILL',			256,		1,				1,					'LinenMill256.dds'		);

-----------------------------------------------
-- IconDefinitions

-- With the IconTextureAtlases defined, we now tie each Atlas to a specific icon-type.

-- The icon Name is defined in the table below and the Atlas tells the game where to pull the graphic from. The Index field directs the game to the right portion of the file, should there be more than one icon. The Index is an integer value in the form of an array - starting from 0, with icons numbered from left-to-right, row-by-row. In this way, we use the ICON_ATLAS_SORTIENT_ULSTER_RIFLES Atlas, which has two icons in a single file, to drive the display of two distinct in-game icons.
-----------------------------------------------

INSERT INTO IconDefinitions
		(Name,														Atlas,									'Index'					)
VALUES	('ICON_CIVILIZATION_SORTIENT_ULSTER',					'ICON_ATLAS_SORTIENT_ULSTER',					0					),
		('ICON_LEADER_SORTIENT_JOHN_HUME',						'ICON_ATLAS_SORTIENT_JOHN_HUME',				0					),
		('ICON_UNIT_SORTIENT_ULSTER_RIFLES_PORTRAIT',			'ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			0					),
		('ICON_UNIT_SORTIENT_ULSTER_RIFLES',					'ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			1					),
		('ICON_BUILDING_ULSTER_LINEN_MILL',							'ICON_ATLAS_LINEN_MILL',						0					);