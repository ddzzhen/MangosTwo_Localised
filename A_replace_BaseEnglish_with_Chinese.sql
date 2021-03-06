-- ----------------------------------------------------------------------------------------------------------------
-- WARNING: Running this script will replace the English text in the base World Database with the localised version
-- ----------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------
-- 警告：运行该脚本将用本地化版本替换数据库中的英文文本
-- ------------------------------------------------

-- 1/13
UPDATE `creature_template`
INNER JOIN `locales_creature` ON `creature_template`.`entry` = `locales_creature`.`Entry`
SET creature_template.`Name`=`locales_creature`.`name_loc4`,creature_template.`subName`=`locales_creature`.`subname_loc4` where `locales_creature`.`subname_loc4` is not null;

-- 2/13
UPDATE `creature_ai_texts`
SET `content_default` = `content_loc4` where `content_loc4` is not null ;

-- 3/13
UPDATE `dbscript_string`
INNER JOIN `db_script_string` on `dbscript_string`.`entry` = `db_script_string`.`entry`
SET `dbscript_string`.`content_default` = `db_script_string`.`content_loc4` where `db_script_string`.`content_loc4` is not null ;

-- 4/13
UPDATE `gameobject_template`
INNER JOIN `locales_gameobject` ON `gameobject_template`.`entry` = `locales_gameobject`.`Entry`
SET gameobject_template.`Name` = `locales_gameobject`.`name_loc4`  where `locales_gameobject`.`name_loc4` is not null ;

-- 5/13
UPDATE `gossip_texts`
SET `content_default` = `content_loc4` where `content_loc4` is not null ;

-- 6/13
UPDATE `gossip_menu_option`
INNER JOIN `locales_gossip_menu_option` ON gossip_menu_option.`menu_id`=`locales_gossip_menu_option`.`menu_id` AND gossip_menu_option.`id`=`locales_gossip_menu_option`.`id`
SET gossip_menu_option.`option_text`=COALESCE(`locales_gossip_menu_option`.`option_text_loc4`,`locales_gossip_menu_option`.`option_text_loc0`,''), gossip_menu_option.`box_text`=COALESCE(`locales_gossip_menu_option`.`box_text_loc4`,`locales_gossip_menu_option`.`box_text_loc0`,'');

-- 7/13
UPDATE `item_template`
INNER JOIN `locales_item` ON item_template.`Entry`=`locales_item`.`entry`
SET item_template.`Name`=`locales_item`.`name_loc4`,item_template.`description`=COALESCE(`locales_item`.`description_loc4`,`locales_item`.`description_loc0`,'');
 
-- 8/13 
UPDATE `mangos_string`
SET `content_default` = `content_loc4` where `content_loc4` is not null ; 

-- 9/13
UPDATE `page_text`
INNER JOIN `locales_page_text` ON page_text.`entry`=`locales_page_text`.`entry`
SET page_text.`Text`=COALESCE(`locales_page_text`.`Text_loc4`,`locales_page_text`.`Text_loc0`,'');

-- 10/13
UPDATE `points_of_interest`
INNER JOIN `locales_points_of_interest` ON points_of_interest.`entry`=`locales_points_of_interest`.`entry`
SET points_of_interest.`icon_name`=COALESCE(`locales_points_of_interest`.`icon_name_loc4`,`locales_points_of_interest`.`icon_name_loc0`,'');

-- 11/13
UPDATE `quest_template`
INNER JOIN `locales_quest` ON quest_template.`entry`=`locales_quest`.`entry` 
SET quest_template.`Title`=COALESCE(`locales_quest`.`Title_loc4`,`locales_quest`.`Title_loc0`),
    quest_template.`Details`=COALESCE(`locales_quest`.`Details_loc4`,`locales_quest`.`Details_loc0`),
    quest_template.`Objectives`=COALESCE(`locales_quest`.`Objectives_loc4`,`locales_quest`.`Objectives_loc0`),
    quest_template.`OfferRewardText`=COALESCE(`locales_quest`.`OfferRewardText_loc4`,`locales_quest`.`OfferRewardText_loc0`),
    quest_template.`RequestItemsText`=COALESCE(`locales_quest`.`RequestItemsText_loc4`,`locales_quest`.`RequestItemsText_loc0`),
    quest_template.`EndText`=COALESCE(`locales_quest`.`EndText_loc4`,`locales_quest`.`EndText_loc0`),
    quest_template.`ObjectiveText1`=COALESCE(`locales_quest`.`ObjectiveText1_loc4`,`locales_quest`.`ObjectiveText1_loc0`),
    quest_template.`ObjectiveText2`=COALESCE(`locales_quest`.`ObjectiveText2_loc4`,`locales_quest`.`ObjectiveText2_loc0`),
    quest_template.`ObjectiveText3`=COALESCE(`locales_quest`.`ObjectiveText3_loc4`,`locales_quest`.`ObjectiveText3_loc0`),
    quest_template.`ObjectiveText4`=COALESCE(`locales_quest`.`ObjectiveText4_loc4`,`locales_quest`.`ObjectiveText4_loc0`);

-- 12/13
UPDATE `script_texts`
SET `content_default` = `content_loc4` where `content_loc4` is not null ;

-- 13/13
UPDATE `npc_text`
INNER JOIN `locales_npc_text` ON npc_text.`id`=`locales_npc_text`.`entry` 
SET npc_text.`Text0_0`=COALESCE(`locales_npc_text`.`Text0_0_loc4`,`locales_npc_text`.`Text0_0_loc0`),
    npc_text.`Text0_1`=COALESCE(`locales_npc_text`.`Text0_1_loc4`,`locales_npc_text`.`Text0_1_loc0`),
    npc_text.`Text1_0`=COALESCE(`locales_npc_text`.`Text1_0_loc4`,`locales_npc_text`.`Text1_0_loc0`),
    npc_text.`Text1_1`=COALESCE(`locales_npc_text`.`Text1_1_loc4`,`locales_npc_text`.`Text1_1_loc0`),
    npc_text.`Text2_0`=COALESCE(`locales_npc_text`.`Text2_0_loc4`,`locales_npc_text`.`Text2_0_loc0`),
    npc_text.`Text2_1`=COALESCE(`locales_npc_text`.`Text2_1_loc4`,`locales_npc_text`.`Text2_1_loc0`),
    npc_text.`Text3_0`=COALESCE(`locales_npc_text`.`Text3_0_loc4`,`locales_npc_text`.`Text3_0_loc0`),
    npc_text.`Text3_1`=COALESCE(`locales_npc_text`.`Text3_1_loc4`,`locales_npc_text`.`Text3_1_loc0`),
    npc_text.`Text4_0`=COALESCE(`locales_npc_text`.`Text4_0_loc4`,`locales_npc_text`.`Text4_0_loc0`),
    npc_text.`Text4_1`=COALESCE(`locales_npc_text`.`Text4_1_loc4`,`locales_npc_text`.`Text4_1_loc0`),
    npc_text.`Text5_0`=COALESCE(`locales_npc_text`.`Text5_0_loc4`,`locales_npc_text`.`Text5_0_loc0`),
    npc_text.`Text5_1`=COALESCE(`locales_npc_text`.`Text5_1_loc4`,`locales_npc_text`.`Text5_1_loc0`),
    npc_text.`Text6_0`=COALESCE(`locales_npc_text`.`Text6_0_loc4`,`locales_npc_text`.`Text6_0_loc0`),
    npc_text.`Text6_1`=COALESCE(`locales_npc_text`.`Text6_1_loc4`,`locales_npc_text`.`Text6_1_loc0`),
    npc_text.`Text7_0`=COALESCE(`locales_npc_text`.`Text7_0_loc4`,`locales_npc_text`.`Text7_0_loc0`),
    npc_text.`Text7_1`=COALESCE(`locales_npc_text`.`Text7_1_loc4`,`locales_npc_text`.`Text7_1_loc0`);

