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
	
	('en_US',	'LOC_LEADER_SORTIENT_JOHN_HUME_NAME',  'John Hume'	),
	
-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

	('en_US',	'LOC_TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT_NAME',				'Good Friday Agreement'	),
	('en_US',	'LOC_TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT_DESCRIPTION',		'Cannot declare Holy Wars. +5% [ICON_Science] Science and +5% [ICON_Culture] Culture in cities owned by John Hume for every religion present.'),
	--Immune to the Recruit Partisans espionage mission. Cannot declare Holy Wars or start Inquisitions.'	),

	
-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

	('en_US',	'LOC_AGENDA_SORTIENT_JOHN_HUME_NAME',	'Seeker of Holy Lands'	),
	('en_US',	'LOC_AGENDA_SORTIENT_JOHN_HUME_DESCRIPTION',	'Will explore the lands around him as much as possible. Respects those that commit efforts to science and culture, but dislikes those that do not recognise religion.'	),
	
	('en_US',	'LOC_DIPLO_KUDO_LEADER_SORTIENT_JOHN_HUME_REASON_ANY',	'(You have a high culture output and are progressing well with science.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SORTIENT_JOHN_HUME_HAPPY',	'Ku Po Ngbe recognises your artists and scholars. Let monuments be built for them in celebration!'	),
	
	('en_US',	'LOC_DIPLO_WARNING_LEADER_SORTIENT_JOHN_HUME_REASON_ANY',	'(You have a low level of faith.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_SORTIENT_JOHN_HUME_UNHAPPY',	'Religion is the blood that binds the body! Ku Po Ngbe expects you to recognise this more proudly.'	),

		
-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

	('en_US',	'LOC_LOADING_INFO_LEADER_SORTIENT_JOHN_HUME',
	'John Hume, your tireless efforts in forging the Good Friday Agreement have shown the world that even the most intractable conflicts can be resolved through peaceful means. Now, as you guide your civilization, let the spirit of that historic accord inspire you. Foster a society where every voice is heard, every culture respected, and every faith cherished, for it is in this unity of diversity that your empire will find its greatest strength.'  	),

-----------------------------------------------
-- Diplomacy Text: First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Approach, stranger. Nehua notoca Po Ngbe, Ku of the Olmec people. Nechpactia nimitzixmati. Know that we cultivate many lands and keep a watchful eye over the rolling hills and plains, far and wide.' ),
	
	-- AI invitation to visit nearby City (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SORTIENT_JOHN_HUME_ANY',
	'We can help you navigate our territory and walk our grounds, wondering at the colossal monuments we built for our Gods. Will you give us the honour of your company?'	),
	
	-- AI accepts human invitation (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SORTIENT_JOHN_HUME_ANY',
	'I am glad to hear it.'	),
	
	-- AI invitation to exchange Capital Information (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SORTIENT_JOHN_HUME_ANY',
	'How better to know a friend than to know his home? Will you indulge our tribesmen, for we will certainly welcome yours?'	),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

	-- (HAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'Ahmo titonamiqui ye huehcauh. Many moons have circled since we last spoke. It is great to see you again, ikniutli.'	),

	-- (UNHAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Tlein chiua tikneki? What makes you request me at this time?'	),
	
-----------------------------------------------
-- Diplomacy Text: Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Your delegation is welcome into my lands, and shall be granted the utmost respect - though please respect our customs and our sacred sites.'	),
	
	-- AI Rejects (ANY)
	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Our sacred lands are closed to visitors at this time.'	),
	
	-- AI Requests (ANY)
	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'We have prepared a delegation to visit your lands carrying the finest jade stone, Kunz axes and ornamental figurines crafted by our people. Consider these a gift.'	),
	
-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'The lands are under the watch of the Gods - there is no reason we cannot each use them.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Our people have a sacred bond with our lands. To open them to your people would be sacrilege.'	),
	
	-- AI requests from human (ANY)	
	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'God watches over the lands of the Olmec. Let our people share each other`s territory, such that our Gods can protect both our races.'	),
	
-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Tlauel kuali! The Olmec werejaguars stand ready to protect our own people and those of our trusted allies, such that you have proven yourself to be.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Amo ipan inin kauitl. Our people are not ready to share such a close bond and friendship at this time.'	),
	
	-- AI Requests friendship from human (ANY)	
	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Kaua tehuantin maka se ixpolotl uikpa se ixpolotl. Even with God watching over our lands, one can never have too many allies. Let us announce to the world that our people share a happy and meaningful bond!'	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'With the Olmec gods as our witness: tlazohcamati. May this bond stay unbroken for many lifetimes.'	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'It is a shame that you shun the recognition of our friendship.'	),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Together, we can be yet stronger in our claim to the lands we each possess. Let us show the world that the blood between our nations runs thicker than most, with an alliance to strengthen ourselves against all foes. What do you say?'	),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_SORTIENT_JOHN_HUME_ANY',
	'The Olmec are impressed by your artistry and your commitment to learning. We hear stories of your educated revelry and long for the same.'	),
	
	-- AI Warnings (ANY)
	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_SORTIENT_JOHN_HUME_ANY',
	'You rule without the recognition of a higher power. You believe this shows strength; but we know it as your weakness.'	),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'Our citizens and our Gods keep watch over our lands. Your military presence has not gone unnoticed. I would ask you to keep your distance, for these lands are holy to the Olmec.'	),

	-- AI warns player for border troops (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Our Gods do not look kindly upon your military. This is a desecration of our holy lands and I insist you to move back at once, or accept the swift consequence.'	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'You have nothing to fear. All Olmec people are most at peace amongst the natural terrain - even those trained in combat. We will ensure they find new territory for their camps.'	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'The Olmec tlakah will station themselves elsewhere. Know, though, that it is the land of our Gods and they do not take kindly to those that interfere with the freedom of their people.'	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_JOHN_HUME_ANY',
	'The land that you expect us to vacate is ours by birthright. That you do not understand this means we cannot peacefully share it. Prepare for conflict!'	),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'The land you have claimed is that of the Olmec. Please be mindful of where you locate your settlements in future.'	),
	
	-- AI warns player for settling too close (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Your settlement is within lands that are the right of the Olmec. I cannot promise that our people and Gods will tolerate this encroachment.'	),
	
	-- Positive AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'I was unaware that you laid claim to such lands. Rest assured, I shall find other, better lands to build upon elsewhere.'	),
	
	-- Positive AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Oh? This land is yours? My apologies, I mistook it for barbarian territory. But if you insist, then I shall settle elsewhere next time.'	),
	
	-- Negative AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'There is no need for hostility, we are able to peacefully share these lands. It is the Olmec way!'	),
	
	-- Negative AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'This land is the birthright of the Olmec. If you want to reclaim it, you will need to make our people leave.'	),
	
-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'Tlazohcamati! We are in agreement!'	),
	
	-- AI Accepts Deal (Unhappy)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Kuali ikimeh. Though we see that this bargain provides more benefit to your people than our tlakah.'	),

	-- AI Rejects Deal (HAPPY)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_JOHN_HUME_HAPPY',
	'Nimitztlatlauhtia. We must find a trade with mutual benefit.'	),
	
	-- AI Rejects Deal (Unhappy)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SORTIENT_JOHN_HUME_UNHAPPY',
	'Ximocahcahua! You must do better, or these talks will come to an unhappy end.'	),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'To declare yourself an enemy of the Olmec is to leave your fate to the Gods.'	),
	
	-- From AI
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Our shamans have visions of your mikistli. The Olmec Gods press us to offer you as a sacrifice. (Denounces You)'	),
	
-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Our lands are protected by our Gods. Your decision will lead you to your tomb.'	),
	
	-- AI Declares War
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'The Gods have demanded the sacrifice of your people...and I agree with them. Inin kitosneki yaoyotl!'	), 

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Tlauel yektli. Let our people return to a peaceful existence.'	),
	
	-- AI refuses human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SORTIENT_JOHN_HUME_ANY',
	'The land on which you settle is ours by right and it will be ours by might!'	),
	
	-- AI requests from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Both sides grow weary of this continued struggle. Let us etch a new, peaceful chapter in our histories.'	),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY',
	'Your fate is not cemented by this victory. The Olmec Gods will take their sacrifice in time!'	),

	-- Human is Defeated (will see this in hotseat)
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_SORTIENT_JOHN_HUME_ANY',
	'{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SORTIENT_JOHN_HUME_ANY}'	),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_JOHN_HUME_QUOTE',
	'When people are divided, the only solution is agreement.'  ),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_JOHN_HUME_TITLE',
	'John Hume'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_SORTIENT_JOHN_HUME_SUBTITLE',
	'Leader of the Social Democratic and Labour Party'	),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_CAPSULE_BODY',
	'Divisions remain clear in Northern Ireland today over 25 years after the historic Good Friday Agreement, but as the country moves towards a peaceful future, it is this diversity which causes Northern Ireland to flourish.'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_DETAILED_BODY',
	'It is wise to allow as many religions as possible to flourish in your lands, putting the Science and Culture of your empire above your own religion`s beliefs. Inquisitions and Holy Wars are therefore discouraged. Make use of Holy Site buildings and Linen Mills to turn Northern Ireland into the industrial powerhouse that it became known for in the 19th and 20th centuries.'	),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_HISTORY_PARA_1',
	'John Hume, born in Derry, Northern Ireland in 1937, emerged as a pivotal figure in the pursuit of peace and reconciliation in the region. A devout Catholic and former teacher, his early experiences with discrimination and social inequality fueled his dedication to social justice. He rose to prominence as a leader in the civil rights movement of the 1960s, advocating for equal rights and opportunities for Catholics in Northern Ireland. His unwavering commitment to non-violence and peaceful protest established him as a moderate voice in the midst of escalating tensions.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_HISTORY_PARA_2',
	'In 1970, Hume co-founded the Social Democratic and Labour Party (SDLP), a political party championing the cause of nationalism and social democracy. As party leader, he tirelessly sought political solutions to the Northern Irish Troubles, engaging in dialogue with various stakeholders and promoting power-sharing arrangements between Catholics and Protestants. His unwavering belief in dialogue and compromise earned him respect across the political spectrum and established him as a key negotiator in the peace process.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_HISTORY_PARA_3',
	'Hume`s most significant contribution to peace in Northern Ireland came through his instrumental role in the negotiation and signing of the Good Friday Agreement in 1998. This landmark agreement, reached after years of painstaking talks, laid the foundation for a power-sharing government in Northern Ireland and marked a turning point in the conflict. Hume`s tireless efforts and unwavering commitment to peace earned him international recognition, including the Nobel Peace Prize in 1998, which he shared with David Trimble, the leader of the Ulster Unionist Party.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_HISTORY_PARA_4',
	'Hume`s political career spanned decades, during which he served as a Member of Parliament in both the British House of Commons and the European Parliament. His dedication to his constituents and his unwavering pursuit of peace and social justice left an indelible mark on Northern Ireland`s political landscape. Hume`s legacy extends beyond his political achievements, inspiring generations of activists and peacemakers.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SORTIENT_JOHN_HUME_CHAPTER_HISTORY_PARA_5',
	'John Hume`s death in 2020 marked the end of an era in Northern Irish politics, but his legacy lives on. Hume`s unwavering commitment to peace, dialogue, and reconciliation continues to inspire and guide the ongoing efforts to build a more just and equitable society in Northern Ireland. And, in a poll conducted by Irish national broadcaster RT�, John Hume was voted as the greatest Irishman who ever lived.'),

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_SORTIENT_JOHN_HUME_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Royal Ulster Rifles, formed in 1921 from the Royal Irish Rifles, was a line infantry regiment of the British Army. With a history dating back to 1793, the regiment participated in various conflicts including both World Wars and the Korean War. The regiment recruited primarily from counties Antrim and Down, but also accepted volunteers from across Ireland. Following the partition of Ireland, it became the only remaining Irish infantry regiment within the British Army. In 1968, the Royal Ulster Rifles was amalgamated with other regiments to form the Royal Irish Rangers, and is part of the modern day Royal Irish Regiment. Today, the regiment`s legacy is preserved through museums and memorials that commemorate its service and sacrifices, most prominently outside Belfast City Hall.'	);

