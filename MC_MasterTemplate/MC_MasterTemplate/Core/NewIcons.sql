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

INSERT INTO IconDefinitions
		(Name,														Atlas,									'Index'					)
VALUES	('ICON_CIVILIZATION_SORTIENT_ULSTER',					'ICON_ATLAS_SORTIENT_ULSTER',					0					),
		('ICON_LEADER_SORTIENT_JOHN_HUME',						'ICON_ATLAS_SORTIENT_JOHN_HUME',				0					),
		('ICON_UNIT_SORTIENT_ULSTER_RIFLES_PORTRAIT',			'ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			0					),
		('ICON_UNIT_SORTIENT_ULSTER_RIFLES',					'ICON_ATLAS_SORTIENT_ULSTER_RIFLES',			1					),
		('ICON_BUILDING_ULSTER_LINEN_MILL',							'ICON_ATLAS_LINEN_MILL',						0					);