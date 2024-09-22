/*
	Localisation
	Authors: MC
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Civilization_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader Name
-----------------------------------------------	
	
	('en_US',	'LOC_LEADER_SORTIENT_HUGH_ONEILL_NAME',  'Hugh O`Neill'	),
	
-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

	('en_US',	'LOC_TRAIT_LEADER_SORTIENT_FLIGHT_OF_THE_EARLS_NAME',				'Nine Years` War'	),
	('en_US',	'LOC_TRAIT_LEADER_SORTIENT_FLIGHT_OF_THE_EARLS_DESCRIPTION',		'Units gain +5 [ICON_Strength] Combat Strength when fighting on their home continent. Receive a random technology when declaring a Joint War. +50% [ICON_Production] Production in Ulster cities for 10 turns after declaring a Joint War.'),
	--Immune to the Recruit Partisans espionage mission. Cannot declare Holy Wars or start Inquisitions.'	),

	
-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

	('en_US',	'LOC_AGENDA_SORTIENT_HUGH_ONEILL_NAME',	'Strength in Diversity'	),
	('en_US',	'LOC_AGENDA_SORTIENT_HUGH_ONEILL_DESCRIPTION',	'Respects those that allow multiple religions to flourish in their lands. Hates those who declare Holy Wars.'	),
	
	('en_US',	'LOC_DIPLO_KUDO_LEADER_SORTIENT_HUGH_ONEILL_REASON_ANY',	'(You have a high culture output and are progressing well with science.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SORTIENT_HUGH_ONEILL_HAPPY',	'Ku Po Ngbe recognises your artists and scholars. Let monuments be built for them in celebration!'	),
	
	('en_US',	'LOC_DIPLO_WARNING_LEADER_SORTIENT_HUGH_ONEILL_REASON_ANY',	'(You have a low level of faith.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SORTIENT_HUGH_ONEILL_UNHAPPY',	'Religion is the blood that binds the body! Ku Po Ngbe expects you to recognise this more proudly.'	),

		
-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

	('en_US',	'LOC_LOADING_INFO_LEADER_SORTIENT_HUGH_ONEILL',
	'Unite your clans, Hugh O`Neill, Earl of Tyrone! When the invader sets foot on your sacred soil, your people`s fury shall be unleashed. Let your warriors rally, their spirits emboldened by righteous cause, for it is in this spirit of resilience that your nation will find their greatest strength.'),

-----------------------------------------------
-- Diplomacy Text: First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Hello, I am John Hume. The road to peace is long and winding, but with understanding and dialogue, we can find our way together.' ),
	
	-- AI invitation to visit nearby City (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'We invite you to our nearby city, to discuss mutual approaches to peace over some of our famous Fifteens.'	),
	
	-- AI accepts human invitation (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I am glad to hear it.'	),
	
	-- AI invitation to exchange Capital Information (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'We will happily share information of our capital, if you will do likewise?'	),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

	-- (HAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'It`s good to see you again. There`s much to be done together in the name of peace.'	),

	-- (UNHAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'We seem to have disagreements, but dialogue is the path to understanding. Let`s talk.'	),
	
-----------------------------------------------
-- Diplomacy Text: Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I welcome your delegation with open arms. Let us share our cultures and find common ground.'	),
	
	-- AI Rejects (ANY)
	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I apologize, but circumstances prevent me from hosting your delegation at this time. Perhaps another time?'	),
	
	-- AI Requests (ANY)
	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I have sent a delegation to your lands, carrying some of our famous Fifteens along with the recipe for a delightful Ulster Fry. I hope you will receive them as appropriate.'	),
	
-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Open borders are a sign of trust and friendship. Let our people mingle and our cultures enrich one another.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I`m hesitant to open our borders fully, but perhaps we can find a compromise another time.'	),
	
	-- AI requests from human (ANY)	
	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Open borders would allow for greater understanding between our people. It`s a step towards a brighter future.'	),
	
-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Friendship is a precious gift. Let us cherish it and work together for peace.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Friendship is built on trust and mutual respect. We need more time to establish that foundation.'	),
	
	-- AI Requests friendship from human (ANY)	
	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Let us declare our friendship to the world. Together, we can be a beacon of hope and understanding.'	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Excellent!'	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Thank you for your consideration. I believe peace is always possible, even if friendship isn`t immediate.'	),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'An alliance between us would strengthen the cause of peace and tolerance. Let`s stand together against those who would sow division.'	),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Your commitment to peace and tolerance is inspiring. You are a model for all leaders.'	),
	
	-- AI Warnings (ANY)
	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Be mindful of the path you`re on. Violence and intolerance only lead to suffering.'	),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'Your troop movements near our border are causing concern. Let us resolve this through dialogue, not force.'	),

	-- AI warns player for border troops (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'Your military presence is a provocation. Withdraw your troops and let us find a peaceful resolution.'	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'You have nothing to fear. All Olmec people are most at peace amongst the natural terrain - even those trained in combat. We will ensure they find new territory for their camps.'	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'The Olmec tlakah will station themselves elsewhere. Know, though, that it is the land of our Gods and they do not take kindly to those that interfere with the freedom of their people.'	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'The land that you expect us to vacate is ours by birthright. That you do not understand this means we cannot peacefully share it. Prepare for conflict!'	),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'Your settlement is close to our borders. Let us ensure we respect each other`s territory and sovereignty.'	),
	
	-- AI warns player for settling too close (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'Your encroachment onto our lands is unacceptable. We must find a way to co-exist peacefully.'	),
	
	-- Positive AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'I was unaware that you laid claim to such lands. Rest assured, I shall find other, better lands to build upon elsewhere.'	),
	
	-- Positive AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'Oh? This land is yours? My apologies, I mistook it for barbarian territory. But if you insist, then I shall settle elsewhere next time.'	),
	
	-- Negative AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'There is no need for hostility, we are able to peacefully share these lands. It is the Olmec way!'	),
	
	-- Negative AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'This land is the birthright of the Olmec. If you want to reclaim it, you will need to make our people leave.'	),
	
-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'Tlazohcamati! We are in agreement!'	),
	
	-- AI Accepts Deal (Unhappy)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'Kuali ikimeh. Though we see that this bargain provides more benefit to your people than our tlakah.'	),

	-- AI Rejects Deal (HAPPY)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_HAPPY',
	'Nimitztlatlauhtia. We must find a trade with mutual benefit.'	),
	
	-- AI Rejects Deal (Unhappy)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_UNHAPPY',
	'Ximocahcahua! You must do better, or these talks will come to an unhappy end.'	),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I am saddened by your words, but I will not be deterred from my pursuit of peace.'	),
	
	-- From AI
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Your actions have made it clear that you do not share my values of peace and tolerance. I cannot stand idly by. (Denounces You)'	),
	
-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Our lands are protected by our Gods. Your decision will lead you to your tomb.'	),
	
	-- AI Declares War
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'I have exhausted all peaceful options. I must defend my people and their right to live in peace.'	), 

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Tlauel yektli. Let our people return to a peaceful existence.'	),
	
	-- AI refuses human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'The land on which you settle is ours by right and it will be ours by might!'	),
	
	-- AI requests from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Both sides grow weary of this continued struggle. Let us etch a new, peaceful chapter in our histories.'	),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'Your fate is not cemented by this victory. The Olmec Gods will take their sacrifice in time!'	),

	-- Human is Defeated (will see this in hotseat)
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_SORTIENT_HUGH_ONEILL_ANY',
	'{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SORTIENT_HUGH_ONEILL_ANY}'	),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_HUGH_ONEILL_QUOTE',
	'Earl of Tyrone'  ),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_HUGH_ONEILL_TITLE',
	'Hugh O`Neill'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_HUGH_ONEILL_SUBTITLE',
	'Leader of the Coalition of Irish Clans'	),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_CAPSULE_BODY',
	'Divisions remain clear in Northern Ireland today over 25 years after the historic Good Friday Agreement, but as the country moves towards a peaceful future, it is this diversity which causes Northern Ireland to flourish.'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_DETAILED_BODY',
	'It is wise to allow as many religions as possible to flourish in your lands, putting the Science and Culture of your empire above your own religion`s beliefs. Inquisitions and Holy Wars are therefore discouraged. Make use of Holy Site buildings and Linen Mills to turn Northern Ireland into the industrial powerhouse that it became known for in the 19th and 20th centuries.'	),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_HISTORY_PARA_1',
	'John Hume, born in Derry, Northern Ireland in 1937, emerged as a pivotal figure in the pursuit of peace and reconciliation in the region. A devout Catholic and former teacher, his early experiences with discrimination and social inequality fueled his dedication to social justice. He rose to prominence as a leader in the civil rights movement of the 1960s, advocating for equal rights and opportunities for Catholics in Northern Ireland. His unwavering commitment to non-violence and peaceful protest established him as a moderate voice in the midst of escalating tensions.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_HISTORY_PARA_2',
	'In 1970, Hume co-founded the Social Democratic and Labour Party (SDLP), a political party championing the cause of nationalism and social democracy. As party leader, he tirelessly sought political solutions to the Northern Irish Troubles, engaging in dialogue with various stakeholders and promoting power-sharing arrangements between Catholics and Protestants. His unwavering belief in dialogue and compromise earned him respect across the political spectrum and established him as a key negotiator in the peace process.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_HISTORY_PARA_3',
	'Hume`s most significant contribution to peace in Northern Ireland came through his instrumental role in the negotiation and signing of the Good Friday Agreement in 1998. This landmark agreement, reached after years of painstaking talks, laid the foundation for a power-sharing government in Northern Ireland and marked a turning point in the conflict. Hume`s tireless efforts and unwavering commitment to peace earned him international recognition, including the Nobel Peace Prize in 1998, which he shared with David Trimble, the leader of the Ulster Unionist Party.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_HISTORY_PARA_4',
	'Hume`s political career spanned decades, during which he served as a Member of Parliament in both the British House of Commons and the European Parliament. His dedication to his constituents and his unwavering pursuit of peace and social justice left an indelible mark on Northern Ireland`s political landscape. Hume`s legacy extends beyond his political achievements, inspiring generations of activists and peacemakers.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_HUGH_ONEILL_CHAPTER_HISTORY_PARA_5',
	'John Hume`s death in 2020 marked the end of an era in Northern Irish politics, but his legacy lives on. Hume`s unwavering commitment to peace, dialogue, and reconciliation continues to inspire and guide the ongoing efforts to build a more just and equitable society in Northern Ireland. And, in a poll conducted by Irish national broadcaster RT�, John Hume was voted as the greatest Irishman who ever lived.'),

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_SORTIENT_HUGH_ONEILL_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Royal Ulster Rifles, formed in 1921 from the Royal Irish Rifles, was a line infantry regiment of the British Army. With a history dating back to 1793, the regiment participated in various conflicts including both World Wars and the Korean War. The regiment recruited primarily from counties Antrim and Down, but also accepted volunteers from across Ireland. Following the partition of Ireland, it became the only remaining Irish infantry regiment within the British Army. In 1968, the Royal Ulster Rifles was amalgamated with other regiments to form the Royal Irish Rangers, and is part of the modern day Royal Irish Regiment. Today, the regiment`s legacy is preserved through museums and memorials that commemorate its service and sacrifices, most prominently outside Belfast City Hall.'	);

