-- Miscellaneous defines changes for gameplay and AI purposes
-- Mostly done by Mechano
NDefines.NGame.START_DATE = "2275.1.1.12"
NDefines.NGame.END_DATE = "2400.1.1.1"

-- Vanilla is 30
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 8

--- Experimental values used for time being, may need to be rebalanced.  Vailla are 0.2 and 100 respectively.
NDefines.NCountry.AIR_VOLUNTEER_PLANES_RATIO = 0.2
NDefines.NAir.AIR_WING_AVERAGE_SIZE = 50

-- Starting at this date, the tension values will be scaled down (will be equal
-- to 1 before that.)
NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "2275.1.1.12"

-- Vanilla is 1.0
NDefines.NDiplomacy.TENSION_SIZE_FACTOR = 0.4  -- All action tension values are multiplied by this value

-- Vanilla is 2
NDefines.NDiplomacy.TENSION_STATE_VALUE = 1.75  -- Tension value gained by annexing one state

-- Vanilla values are 10 and 7 respectively
NDefines.NDiplomacy.TENSION_NO_CB_WAR = 5  -- Amount of tension generated by a no-CB wargoal
NDefines.NDiplomacy.TENSION_CB_WAR = 3  -- Amount of tension generated by a war with a CB

NDefines.NDiplomacy.TENSION_ANNEX_NO_CLAIM = 1  -- Vanilla is 2, claims (0.5) should not be dramatically less in OWB. Amount of tension generated by annexing a state you don't have claims on

-- Vanilla is 0.005
NDefines.NDiplomacy.TENSION_DECAY_DAILY = 0.008	-- Each day tension decays this much for Threat sources which are no longer relevant. Replaces TENSION_DECAY as of 1.12.0

-- Vanilla is 0.25
NDefines.NDiplomacy.TENSION_PEACE_FACTOR = 0.3	-- scale of the amount of tension (from war declaration) reduced when peace is completed.

-- Vanilla is 0.25 for all
NDefines.NDiplomacy.TENSION_TAKE_ONE_CAPITAL_SHIP = 0.2  -- Amount of tension generated by 1 take navy peace action
NDefines.NDiplomacy.TENSION_DEMILITARIZE_ZONE = 0.2	 -- Amount of tension generated by stacking demilitarize zone on 1 state, multiplied with the state base threat
NDefines.NDiplomacy.TENSION_WAR_REPARATION = 0.2  -- Amount of tension generated by stacking war reparation on 1 state, multiplied with the state base threat
NDefines.NDiplomacy.TENSION_RESOURCE_RIGHTS = 0.2  -- Amount of tension generated by stacking resource rights on 1 state, multiplied with the state base threat
NDefines.NDiplomacy.TENSION_DISMANTLE_INDUSTRY = 0.2  -- Amount of tension generated by stacking dismantle military industry on 1 state, multiplied with the state base threat

-- Vanilla is 2 for both. With things like robots/robot techs that downgrade conscription, manpower is both less critical and less accurate as a metric
NDefines.NDiplomacy.ASSUME_FACTION_LEADERSHIP_MIN_MANPOWER_RATIO = 2.5  -- The minimum ratio of manpower that a country must have compared to the current leader in order to assume leadership.
NDefines.NDiplomacy.FACTION_LEADERSHIP_CHANGE_MANPOWER_WEIGHT = 1.5  -- Importance of manpower in field when determining how close a faction member is to being able to assume leadership.

NDefines.NCountry.BASE_MOBILIZATION_SPEED = 0.015

-----------------------
-- Peace Conferences --
-----------------------

NDefines.NCountry.STATE_VALUE_BASE = 8.0  -- Vanilla is 10. Base value of a state (value is used to determine costs in e.g. peace conferences)
NDefines.NCountry.STATE_VALUE_BUILDING_SLOTS_MULT = 4.0  -- Vanilla is 4. The value of each building slot in a state
NDefines.NCountry.STATE_VALUE_MANPOWER_FACTOR = 0.2  -- Vanilla is 0.1. State cost increases with this for every 10k population (so 3.1M becomes 310 and then multiplied by this)
NDefines.NBuildings.MAX_SHARED_SLOTS = 30  -- Vanilla is 25. Max slots shared by factories

-- Vanilla for both is 15
NDefines.NDiplomacy.PEACE_COST_FACTOR_CONTESTED_MAX = 8  -- To prevent overflows due to the exponential increase, cap the contested factor to this
NDefines.NDiplomacy.PEACE_COST_FACTOR_UNCONTESTED_MAX = 8  -- To prevent overflows due to the exponential increase, cap the uncontested factor to this

-- Vanilla is 1.20
NDefines.NDiplomacy.PEACE_COST_FACTOR_CONTESTED_BID = 1.10  -- Cost factor for each contested bid on the state.

NDefines.NDiplomacy.PEACE_SCORE_DISTRIBUTION = { 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2 }  -- Vanilla is 5 sets of 0.2. How much of the total peace conference score you get during the first n turns.

-- Vanilla is 1.15, 1.60 and .15 respectively
NDefines.NDiplomacy.PEACE_COST_FACTOR_UNCONTESTED_BID_MIN = 1.10  -- Minimum cost factor for each turn a bid has been uncontested on the state.
NDefines.NDiplomacy.PEACE_COST_FACTOR_UNCONTESTED_BID_MAX = 1.50  -- Maximum cost factor for each turn a bid has been uncontested on the state.
NDefines.NDiplomacy.PEACE_COST_FACTOR_UNCONTESTED_BID_STEP = 0.1  -- Uncontested cost factor will increase by this much each turn.

-- Vanilla is 1.35
NDefines.NDiplomacy.PEACE_SCORE_SCALE_FACTOR = 2.25  -- Losers' total value times this factor becomes the default total peace conference score that is distributed to the winners.

-- In peace conference, adding a stackable to a peace action, increment the cost by a percentage
NDefines.NDiplomacy.PEACE_COST_FACTOR_STACK_DEMILITARIZED_ZONE = 0.25  -- Vanilla is 0.25
NDefines.NDiplomacy.PEACE_COST_FACTOR_STACK_WAR_REPARATION = 0.4  -- Vanilla is 0.25
NDefines.NDiplomacy.PEACE_COST_FACTOR_STACK_RESOURCE_RIGHTS = 0.4  -- Vanilla is 0.25
NDefines.NDiplomacy.PEACE_COST_FACTOR_STACK_DISMANTLE_INDUSTRY = 0.25  -- Vanilla is 0.25

-- Peace conference can set timed effect, set length in days
NDefines.NDiplomacy.PEACE_TIMED_EFFECT_LENGTH_DEMILITARIZED_ZONE = 1095  -- Vanilla is 1825. 1095 days = 3 years
NDefines.NDiplomacy.PEACE_TIMED_EFFECT_LENGTH_WAR_REPARATION = 730  -- Vanilla is 1825. 730 days = 2 years
NDefines.NDiplomacy.PEACE_TIMED_EFFECT_LENGTH_RESOURCE_RIGHTS = 730  -- Vanilla is 1825. 730 days = 2 years

NDefines.NDiplomacy.PEACE_TIMED_EFFECT_RATIO_CIVILIAN_FACTORY_WAR_REPARATION = 0.25  -- Vanilla is 0.5 (lowered due to puppet laws and ideas). Ratio of civilian factories taken via stackable war reparation

NDefines.NDiplomacy.FRONT_IS_DANGEROUS = -50  -- Vanilla is -100. AI should be unwilling to enter accept a call to war if front is too dangerous.

-- Vanilla is 0.5
NDefines.NAI.PEACE_BID_FOLD_AGAINST_PLAYER_CHANCE = 0.65  -- Likelihood that AI will fold in a bidding contest against human player.

-- Vanilla is 0.5. Changed so dramatically because OWB has far less manpower
NDefines.NMilitary.WAR_SCORE_LOSSES_RATIO = 7.5  -- war score gained for every 1000 casualties

-- Vanilla is 0.1 and 2.0 respectively
NDefines.NMilitary.WAR_SCORE_LAND_DAMAGE_FACTOR = 0.12  -- war score gained for every strength damage done to an enemy's army
NDefines.NMilitary.WAR_SCORE_PROVINCE_FACTOR = 2.2  -- war score gained when capturing a province for the first time, multiplied by province's worth

-- Vanilla is 0.001. OWB has far, far less men per ship so a 40x increase is actually still not enough to make it proportional
NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_MANPOWER_FACTOR = 0.04  -- war score gained for every manpower killed when sinking a ship

--------------
-- NCountry --
--------------
-- Based on number of armies.
NDefines.NCountry.BASE_STABILITY_PARTY_POPULARITY_FACTOR = 0.05 -- More countries in OWB start with only one ideology

-- NOTE: These need to stay at 0.5 to make penalties start at 0.5. Please manually set Stability and War Support for nations. In general, less ways to reduce stability in OWB, Generic countries Stab and WS should be smaller.
NDefines.NCountry.DEFAULT_STABILITY = 0.5  -- Vanilla is 0.5. Default stability if not scripted otherwise.
NDefines.NCountry.DEFAULT_WAR_SUPPORT = 0.5  -- Vanilla is 0.5. Default war support if not scripted otherwise.

NDefines.NCountry.WAR_SUPPORT_TENSION_IMPACT = 0.15  -- Total impact of world tension, vanilla is 0.4.
NDefines.NCountry.ARMY_SCORE_MULTIPLIER = 0.15
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.02  -- Max ammount of special forces battalions is total number of non-special forces battalions multiplied by this and modified by a country modifier
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 20  -- You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier
NDefines.NCountry.STARTING_COMMAND_POWER = 20   -- starting command power for every country. Vanilla is 0
NDefines.NCountry.CIVIL_WAR_INVOLVEMENT_MIN_TENSION = 0  -- base value of world tension to involve other sides to the civil war. Vanilla is 0.5
NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.015  -- Vanilla is 0.015. Basic population growth per year, used for monthly manpower gain

NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.3

--------------------
-- AI battleplans --
--------------------
-- The lower this number is, the longer the AI will hold the line before
-- sending them to the fallback line.
NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.25

NDefines.NAI.ORG_UNIT_STRONG = 0.75  -- Vanilla is 0.75. Organization % for unit to be considered strong
NDefines.NAI.STR_UNIT_STRONG = 0.75  -- Vanills is 0.75. Strength (equipment) % for unit to be considered strong
NDefines.NAI.ORG_UNIT_WEAK = 0.45  -- Vanilla is 0.15. Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.45  -- Vanilla is 0.2. Strength (equipment) % for unit to be considered weak
NDefines.NAI.ORG_UNIT_NORMAL = 0.6  -- Vanilla is 0.35. Organization % for unit to be considered normal
NDefines.NAI.STR_UNIT_NORMAL = 0.6  -- Vanills is 0.4. Strength (equipment) % for unit to be considered normal

-- % or more of units in an order to consider executing the plan
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65

-- % or more of units in an order to consider executing the plan
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.5

-- % or more average plan preparation before executing
--NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.0

-- If we are in combat for this amount and it goes shitty then try skipping it. Vanilla is 100
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 48

-- How aggressive a country is in activating a plan based on how superiour their force is. Vanilla is 1.0
NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 1.3

-- If less than this fraction of units on a front is moving AI sees it as ready
-- for action. Vanilla is 0.25.
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.2

-- The AI will not consider members of groups which plan is not activated AND evaluates lower than this. Vanilla is 0.2
NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.15

-- Victory points with values higher than or equal to this are considered to be of high, medium and low importance respectively.
NDefines.NAI.VP_LEVEL_IMPORTANCE_HIGH = 20								    -- Vanilla is 0 seemingly
NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 10							    -- Vanilla is 10
NDefines.NAI.VP_LEVEL_IMPORTANCE_LOW = 3									-- Vanilla is 0 seemingly

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.75						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.55

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.45
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.4
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65
-- AI will typically avoid carrying out a plan it below this value (0.0 is
-- considered balanced).
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.3

-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0. Vanilla is 0.5
NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.3

-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0. Vanilla is 0.9
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.7

-- Limit on location strength balance between country and enemy for unit to
-- dare to move forward.
--NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.0

-- AI countries will hold on activating plans if stronger countries have plans
-- in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 0.0

-- AI countries will hold on activating plans if player controlled countries
-- have plans in the same location. Majors count extra (value of 1 will negate
-- this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 0.0

-- A country with less provinces than this will not draw fallback plans but
-- rather station their troops along the front
NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 500

-- Cancel unit production if below this to get resources out to units in the
-- field
NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7

-- Cancel unit production if below this to get resources out to units in the
-- field (producing too many units will cause problems)
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.9

-- Base value for how much of currently used equipment the AI will at least
-- strive to have in stock
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.7

-- Factor for desired number of units to assign to area defense orders
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 0.25

-- Factor for min number of units to assign to area defense orders
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 0.25

-- Ignore supply cap if below this value when deciding on how many divisions to
-- produce.
NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 100

NDefines.NAI.MAX_SUPPLY_DIVISOR = 0.5

-- Required percentage of training (1.0 = 100%) for AI to deploy unit in
-- peacetime. Vanilla is 0.98
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.94

-- Required percentage of training (1.0 = 100%) for AI to deploy unit in
-- wartime. Vanilla is 0.95
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.5

-- If AI has this much manpower he doesn't care about the percentage
NDefines.NAI.MANPOWER_FREE_USAGE_THRESHOLD = 5000

-- The AI will not deploy more units if he goes below this percentage. Vanilla is undefined
NDefines.NAI.MANPOWER_RESERVED_THRESHOLD = 0.20

NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time
NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.15		-- deployment will try to buffer a ratio of manpower (for reinforcements) during peace time
-- ai will not start to train if equipment drops below this level
NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8

-- ai will not train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7

-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in
-- peacetime. Vanilla is 0.98
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.95

-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in
-- wartime. Vanilla is 0.95
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.90

--NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 5.0

-- Desire to boost relations subtracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 40.0

NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1

-- Naval invasion stuffs
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 0.5				-- Factor for max number of units to assign to naval invasion orders

-- Building prioritization
NDefines.NAI.CONSTRUCTION_PRIO_RAILWAY = 0.0


----------------------
NDefines.NAI.COMBINED_ARMS_LEVEL = 1							-- 0 = Never, 1 = Infantry/Artillery, 2 = Go wild
NDefines.NAI.MICRO_POCKET_SIZE = 10						-- Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency.
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 32

-- AI Diplomacy
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.0
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.5
NDefines.NAI.FORCE_FACTOR_AGAINST_EXTRA_MINOR = 0.4			-- AI considers generating wargoals against minors below this % of force compared to themselves to get at a bigger enemy.
NDefines.NAI.MAX_EXTRA_WARGOAL_GENERATION = 2				-- AI may want to generate wargoals against weak minors to get at larger enemy, but never more that this at any given time.
NDefines.NAI.WARGOAL_GENERATION_STRENGTH_FACTOR = 1.5	-- Desire to generate wargoal effected negatevely if actor strength is less than this factor of target strength
NDefines.NAI.DECLARE_WAR_RELATIVE_FORCE_FACTOR = 0.4	-- Weight of relative force between nations that consider going to war
NDefines.NAI.DECLARE_WAR_NOT_NEIGHBOR_FACTOR = 0.25		-- Multiplier applied before force factor if country is not neighbor with the one it is considering going to war
NDefines.NAI.DIPLOMACY_CREATE_FACTION_FACTOR = 0.95
NDefines.NAI.CALL_ALLY_DEMOCRATIC_DESIRE = 25
NDefines.NAI.FASCISTS_ANTAGONIZE_FASCISTS = 50
NDefines.NAI.FASCISTS_ANTAGONIZE_DEMOCRACIES = 120
NDefines.NAI.FASCISTS_ANTAGONIZE_COMMUNISTS = 120
NDefines.NAI.MIN_ANTAGONIZE_FOR_WARGOAL_JUSTIFICATION = -1000		-- AI countries will not fabricate claims against countries with an antagonization value lower than this.
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 800			-- Base value of volunteer acceptance (help is welcome)
NDefines.NDiplomacy.GUARANTEE_COST = 100

-- AI Evaluations
NDefines.NAI.MANPOWER_RATIO_REQUIRED_TO_PRIO_MOBILIZATION_LAW = 0.35  -- Vanilla is 0.4. Percentage of manpower in field is desired to be buffered for AI when it has upcoming wars or already at war. if it has less manpower, it will prio manpower laws

NDefines.NAI.HIGH_COMMAND_ADDED_WEIGHT_FACTOR = 0.1  -- Vanilla is 0.25. Weight multiplier for high_command advisors over other chosen advisor or idea types
NDefines.NAI.CHIEF_ADDED_WEIGHT_FACTOR = 2  -- Vanilla is 12.5 (why so high???). Weight multiplier for chief roles over other advisor or idea types

NDefines.NAI.UNLOCK_SPIRIT_AI_WILL_DO_FACTOR = 25  -- Vanilla is 20. Factor for scripted ai_will_do value
NDefines.NAI.UNLOCK_SPIRIT_MODIFIER_FACTOR = 0.01  -- Vanilla is 0.05. Factor for AI's evaluated value of the modifiers connected to the spirit
NDefines.NAI.ADVISOR_SCORE_TRAIT_MODIFIER_FACTOR = 0.1  -- Vanilla is 0.2. When scoring advisors, factor the score contribution from the advisor's trait modifiers by this value
NDefines.NAI.EVAL_MODIFIER_NON_PERCENT_FACTOR = 0.001  -- Vanilla is 0.1. Multiply non-percent-based modifiers with this to put the values in the approximately same range so they can be compared. (Why we are using 0.1 and not 0.01? No idea...)

NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 15  -- Vanilla is 30. Strategic importance of naval factories
NDefines.NAI.DOCKYARDS_PER_NAVAL_DESIRE_EFFECT = -70.0  -- Vanilla is -20.0. Effects how much AI wants to build dockyards based on how navally focused they are in general. Recommended range -100.0 to 100.0.
NDefines.NAI.AIR_CHIEF_SCORE_MULTIPLIER = 1  -- Vanilla is 1.5. Score multiplier for hiring an air chief
NDefines.NAI.NAVY_CHIEF_SCORE_MULTIPLIER = 0.5  -- Vanilla is 1.0. Score multiplier for hiring an navy chief
NDefines.NAI.POLITICAL_ADVISOR_SCORE_MULTIPLIER = 1.5  -- Vanilla is 1.25. Score multiplier for hiring political advisors

-- Combat

NDefines.NMilitary.EXPERIENCE_LOSS_FACTOR = 0.8						-- Scale to smaller unit sizes
NDefines.NMilitary.UNIT_EXPERIENCE_SCALE = 1.0
NDefines.NMilitary.FIELD_EXPERIENCE_SCALE = 0.06					-- Scale to smaller unit sizes

NDefines.NNavy.AMPHIBIOUS_LANDING_PENALTY = -0.35					-- amphibious landing penalty
NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.3                          -- Vanilla is 0.25

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2		-- vanilla value = 2 extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 4		-- vanilla value = 6 extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_DEFLECTION_FACTOR = 0.5	-- vanilla value = 0.5 damage reduction if armor outclassing enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_DEFLECTION_FACTOR = 0.25	-- vanilla value = 0.5 damage reduction if armor outclassing enemy

NDefines.NMilitary.BASE_FORT_PENALTY = -0.08				-- fort penalty
NDefines.NMilitary.BASE_COMBAT_WIDTH = 120					-- base combat width
NDefines.NMilitary.ADDITIONAL_COMBAT_WIDTH = 40				-- more opened up by support attack

NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 1.15	-- Vanilla is 2. Base year ahead penalty
NDefines.NTechnology.BASE_TECH_COST = 60					-- Base cost for a tech. multiplied with tech cost and ahead of time penalties

NDefines.NMilitary.ARMY_INITIATIVE_REINFORCE_FACTOR = 0.2  -- Vanilla is 0.25. Scales initiative for reinforce chance

NDefines.NMilitary.RECON_SKILL_IMPACT = 6  -- Vanilla is 5. How many skillpoints is a recon advantage worth when picking a tactic.
NDefines.NMilitary.INITIATIVE_PICK_COUNTER_ADVANTAGE_FACTOR = 0.4  -- Vanilla is 0.35. Advantage per leader level for picking a counter
NDefines.NIntel.RECON_INTEL_BONUS = 0.1  -- Vanilla is 0.075. Each recon gives this bonus to overall gathered land intel in combat

NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 2  -- Vanilla is 2.5. If the enemy has a navy at least these many times stronger that the own, don't bother invading
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 2.5  -- Vanilla is 1.2. Fronts that belongs to recent invasions gets more prio

NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 7		 	-- Refreshes need scores based on country situation.
NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.15		-- Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.02	-- Multiplies value based on relative naval industry size / country size.
NDefines.NAI.RESEARCH_AIR_DOCTRINE_NEED_GAIN_FACTOR = 0.03		-- Multiplies value based on relative number of air base / country size.
NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.75 					-- Impact of previously unexplored tech weights. Higher means more random exploration.
--NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 2.0				-- To which extent AI should care about ahead of time bonuses to research
NDefines.NAI.RESEARCH_BONUS_FACTOR = 1.25 						-- To which extent AI should care about bonuses to research. Vanilla is 0.9
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.5		-- AI will at least need this amount of xp compared to cost of a tech to research it with XP. Vanilla is 2
--NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 3					-- max ahead of tiem penalty ai will pick ever
--NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 2.3 				-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60							-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

-----------
-- Trade --
-----------

-- Trade factor is modified by distance times this.
-- Long-distance trade in OWB is really, really difficult.
-- Vanilla value = -0.02
NDefines.NTrade.DISTANCE_TRADE_FACTOR = -0.25

-- Opinion should matter more in OWB than it does in the base game.
NDefines.NTrade.RELATION_TRADE_FACTOR = 4

-- Opinion already factors in to trade factor, so this is lower.
NDefines.NTrade.PARTY_SUPPORT_TRADE_FACTOR = 10

-- Vanilla value = 1000
NDefines.NTrade.BASE_LAND_TRADE_RANGE = 1000

--- World Tension shouldn't cause trade to stop.
NDefines.NDiplomacy.OPINION_FOR_DEMO_FROM_WT_GENERATION = 0

-- production
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 2400	-- minimum amount of units able to be trained
NDefines.NProduction.MIN_FIELD_TO_TRAINING_MANPOWER_RATIO = 0.5 -- Ratio which % of army in field can be trained
NDefines.NProduction.MAX_EQUIPMENT_RESOURCES_NEED = 4

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 30	-- (2000) stop randomly upgrading to infantry
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.1
NDefines.NAI.DIVISION_UPGRADE_MIN_XP = 5							-- Minimum XP before attempting to upgrade a division template.
NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 50							-- If XP is above this on the daily tick the AI will attempt to spend it

NDefines.NAI.FORTIFIED_MIN_ORG_FACTOR_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3      -- ai will treat fortified provinces as unfortified if no unit in that province has an organization factor at least this high. Vanilla is 0.2

NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 300					-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels.

NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.9		-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%) Vanilla is 0.5

-- NDefines.NAI.STRIKE_FLEET_MAX_DISTANCE_TO_COMBAT = 500.0				-- The strike fleet will not attempt to intervene in combats further away than this.
NDefines.NMilitary.PLAN_EXECUTE_RUSH = -10						-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 0.0
NDefines.NAI.CONVOY_NEED_SAFETY_BUFFER = 0

--NNavy
NDefines.NNavy.NAVAL_INVASION_PREPARE_HOURS = 128								-- base hours needed to prepare an invasion

NDefines.NMilitary.BORDER_WAR_VICTORY = 0.65						-- At wich border war balance of power is victory declared

NDefines.NBuildings.BASE_FACTORY_REPAIR = 0.3			-- Default repair rate before factories are taken into account
NDefines.NBuildings.BASE_FACTORY_REPAIR_FACTOR = 2.0	-- Factory speed modifier when repairing.

NDefines.NBuildings.DESTRUCTION_COOLDOWN_IN_WAR = 20    -- Vanilla is 30. Number of days cooldown between removal of buildings in war times

--NAir
NDefines.NAir.ACE_WING_SIZE = 50  -- Vanilla is 100. size of wing ace bonuses are set up for. if lower more bonus, if higher less bonus
NDefines.NAir.ACE_DEATH_CHANCE_BASE = 0.05
NDefines.NAir.ACE_DEATH_CHANCE_PLANES_MULT = 0.03
NDefines.NAir.ACE_EARN_CHANCE_BASE = 0.03
NDefines.NAir.ACE_EARN_CHANCE_PLANES_MULT = 0.02

-- Diplomacy --
NDefines.NDiplomacy.MAX_TRUST_VALUE = 500  -- Vanilla is 100. Max trust value cap.
NDefines.NDiplomacy.MIN_TRUST_VALUE = -500  -- Vanilla is -100. Min trust value cap.
NDefines.NDiplomacy.MAX_OPINION_VALUE = 200  -- Vanilla is 100. Max opinion value cap.
NDefines.NDiplomacy.MIN_OPINION_VALUE = -200  -- Vanilla is -100. Min opinion value cap.

-- Justifications --
NDefines.NDiplomacy.WARGOAL_VERSUS_MAJOR_AT_WAR_REDUCTION = -0.5  -- Vanilla is -0.75 (OWB always assigns major status). Reduction of pp cost for wargoal vs major at war.

-- Factions --
NDefines.NDiplomacy.IDEOLOGY_JOIN_FACTION_MIN_LEVEL = -0.1	-- disable ideology limit for joining factions

-- Embargos --
NDefines.NDiplomacy.EMBARGO_COST = 50       -- One-time cost. Vanilla is 100
NDefines.NDiplomacy.EMBARGO_THREAT_THRESHOLD = 10       -- Target-generated threat threshold to allow embargo (affected by modifiers). Vanilla is 30

NDefines.NDiplomacy.EMBARGO_SAME_IDEOLOGY_AI_WEIGHT = -50   -- AI weight for same ideology. Vanilla is -20
NDefines.NDiplomacy.EMBARGO_DIFFERENT_IDEOLOGY_AI_WEIGHT = -25        -- AI weight for different ideology. Vanilla is 15
NDefines.NDiplomacy.EMBARGO_DIFFERENT_IDEOLOGY_AT_OFFENSIVE_WAR_AI_WEIGHT = 10        --AI weight for different ideology and in offensive war (additive with above). Vanilla is 10
NDefines.NDiplomacy.EMBARGO_RECIPIENT_IS_MAJOR_AI_WEIGHT = 0        -- Ai weight for recipient being major. Vanilla is 10. OWB treats major status differenty

-- NO UNITS FOR YOU BAD PLAYER, never again 40 width demo teams.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_WIDTH = 5			-- Max width of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_HEIGHT = 5			-- Max height of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 5			-- Max width of support in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_HEIGHT = 1			-- Max height of support in division designer.

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 650			--Max army experience a country can store
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 650			--Max navy experience a country can store
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 650				--Max air experience a country can store

NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 15 	--Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 5	--Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 10 	--Base cost to unlock a support slot

NDefines.NFocus.FOCUS_POINT_DAYS = 1

NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 168 --Makes the game much more bearable in MP, This is actually in hours, not days, making it 7 days worth.

