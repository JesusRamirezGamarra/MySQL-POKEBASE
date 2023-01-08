-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: poke
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_pokemon_by_generation`
--

DROP TABLE IF EXISTS `vw_pokemon_by_generation`;
/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_generation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pokemon_by_generation` AS SELECT 
 1 AS `pokemon_number_pokedex`,
 1 AS `pokemon_name`,
 1 AS `1er Generation`,
 1 AS `2da Generation`,
 1 AS `3er Generation`,
 1 AS `4ta Generation`,
 1 AS `5ta Generation`,
 1 AS `6ta Generation`,
 1 AS `7ma Generation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `daysofweek`
--

DROP TABLE IF EXISTS `daysofweek`;
/*!50001 DROP VIEW IF EXISTS `daysofweek`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `daysofweek` AS SELECT 
 1 AS `day`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_gym_leaders_by_medal_by_league`
--

DROP TABLE IF EXISTS `vw_gym_leaders_by_medal_by_league`;
/*!50001 DROP VIEW IF EXISTS `vw_gym_leaders_by_medal_by_league`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gym_leaders_by_medal_by_league` AS SELECT 
 1 AS `id_league`,
 1 AS `id_medal`,
 1 AS `id_gym_leader`,
 1 AS `league_name`,
 1 AS `medal_name`,
 1 AS `gym_leader_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_statistics_by_pokemon__islengedary`
--

DROP TABLE IF EXISTS `vw_statistics_by_pokemon__islengedary`;
/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon__islengedary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_statistics_by_pokemon__islengedary` AS SELECT 
 1 AS `id_pokemon`,
 1 AS `id_statistics`,
 1 AS `pokemon_name`,
 1 AS `hp`,
 1 AS `attack`,
 1 AS `defense`,
 1 AS `sp_defense`,
 1 AS `sp_attack`,
 1 AS `speed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pokemon_by_pokemon_types`
--

DROP TABLE IF EXISTS `vw_pokemon_by_pokemon_types`;
/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_pokemon_types`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pokemon_by_pokemon_types` AS SELECT 
 1 AS `id_pokemon_type`,
 1 AS `id_pokemon`,
 1 AS `pokemon_type_name`,
 1 AS `pokemon_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pokemon_by_generation__count`
--

DROP TABLE IF EXISTS `vw_pokemon_by_generation__count`;
/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_generation__count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pokemon_by_generation__count` AS SELECT 
 1 AS `1er_Generation`,
 1 AS `2da_Generation`,
 1 AS `3er_Generation`,
 1 AS `4ta_Generation`,
 1 AS `5ta_Generation`,
 1 AS `6ta_Generation`,
 1 AS `7ma_Generation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medal_by_league`
--

DROP TABLE IF EXISTS `vw_medal_by_league`;
/*!50001 DROP VIEW IF EXISTS `vw_medal_by_league`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medal_by_league` AS SELECT 
 1 AS `id_league`,
 1 AS `id_medal`,
 1 AS `league_name`,
 1 AS `medal_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pokemon_by_gender`
--

DROP TABLE IF EXISTS `vw_pokemon_by_gender`;
/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pokemon_by_gender` AS SELECT 
 1 AS `female`,
 1 AS `male`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_statistics_by_pokemon`
--

DROP TABLE IF EXISTS `vw_statistics_by_pokemon`;
/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_statistics_by_pokemon` AS SELECT 
 1 AS `id_pokemon`,
 1 AS `id_statistics`,
 1 AS `pokemon_name`,
 1 AS `hp`,
 1 AS `attack`,
 1 AS `defense`,
 1 AS `sp_defense`,
 1 AS `sp_attack`,
 1 AS `speed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medal_by_league__full`
--

DROP TABLE IF EXISTS `vw_medal_by_league__full`;
/*!50001 DROP VIEW IF EXISTS `vw_medal_by_league__full`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medal_by_league__full` AS SELECT 
 1 AS `id_league`,
 1 AS `id_medal`,
 1 AS `league_name`,
 1 AS `medal_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_statistics_by_pokemon_types__max_score`
--

DROP TABLE IF EXISTS `vw_statistics_by_pokemon_types__max_score`;
/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon_types__max_score`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_statistics_by_pokemon_types__max_score` AS SELECT 
 1 AS `id_pokemon_type`,
 1 AS `pokemon_type_name`,
 1 AS `hp`,
 1 AS `attack`,
 1 AS `defense`,
 1 AS `sp_defense`,
 1 AS `sp_attack`,
 1 AS `speed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_amount_pokemon_types`
--

DROP TABLE IF EXISTS `vw_amount_pokemon_types`;
/*!50001 DROP VIEW IF EXISTS `vw_amount_pokemon_types`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_amount_pokemon_types` AS SELECT 
 1 AS `id_pokemon_type`,
 1 AS `pokemon_type_name`,
 1 AS `amount_of_pokemons`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_pokemon_by_generation`
--

/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_generation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pokemon_by_generation` AS select `p`.`number` AS `pokemon_number_pokedex`,`p`.`name` AS `pokemon_name`,(case when (`p`.`generation` = 1) then true else false end) AS `1er Generation`,(case when (`p`.`generation` = 2) then true else false end) AS `2da Generation`,(case when (`p`.`generation` = 3) then true else false end) AS `3er Generation`,(case when (`p`.`generation` = 4) then true else false end) AS `4ta Generation`,(case when (`p`.`generation` = 5) then true else false end) AS `5ta Generation`,(case when (`p`.`generation` = 6) then true else false end) AS `6ta Generation`,(case when (`p`.`generation` = 7) then true else false end) AS `7ma Generation` from `pokemons` `p` group by `p`.`number`,`p`.`name` order by `p`.`number`,`p`.`generation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `daysofweek`
--

/*!50001 DROP VIEW IF EXISTS `daysofweek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `daysofweek` (`day`) AS select 'Mon' AS `Day` union select 'Tue' AS `Tue` union select 'Web' AS `Web` union select 'Thu' AS `Thu` union select 'Fri' AS `Fri` union select 'Sat' AS `Sat` union select 'Sun' AS `Sun` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_gym_leaders_by_medal_by_league`
--

/*!50001 DROP VIEW IF EXISTS `vw_gym_leaders_by_medal_by_league`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gym_leaders_by_medal_by_league` AS select `l`.`id_league` AS `id_league`,`m`.`id_medal` AS `id_medal`,`g`.`id_gym_leader` AS `id_gym_leader`,`l`.`name` AS `league_name`,`m`.`name` AS `medal_name`,`g`.`name` AS `gym_leader_name` from ((`leagues` `l` join `medals` `m` on((`l`.`id_league` = `m`.`id_league`))) join `gym_leaders` `g` on((`m`.`id_medal` = `g`.`id_medal`))) where ((`l`.`active` = 1) and (`m`.`active` = 1) and (`g`.`active` = 1)) order by `l`.`name`,`m`.`name`,`g`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_statistics_by_pokemon__islengedary`
--

/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon__islengedary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_statistics_by_pokemon__islengedary` AS select `p`.`id_pokemon` AS `id_pokemon`,`s`.`id_statistics` AS `id_statistics`,`p`.`name` AS `pokemon_name`,`s`.`hp` AS `hp`,`s`.`attack` AS `attack`,`s`.`defense` AS `defense`,`s`.`sp_defense` AS `sp_defense`,`s`.`sp_attack` AS `sp_attack`,`s`.`speed` AS `speed` from (`pokemons` `p` join `statistics` `s` on((`p`.`id_pokemon` = `s`.`id_pokemon`))) where ((`p`.`active` = 1) and (`s`.`active` = 1) and (`p`.`is_legendary` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pokemon_by_pokemon_types`
--

/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_pokemon_types`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pokemon_by_pokemon_types` (`id_pokemon_type`,`id_pokemon`,`pokemon_type_name`,`pokemon_name`) AS select `t`.`id_pokemon_type` AS `id_pokemon_type`,`p`.`id_pokemon` AS `id_pokemon`,`t`.`name` AS `pokemon_type_name`,`p`.`name` AS `pokemon_name` from ((`pokemons` `p` join `pokemon_per_pokemon_types` `pt` on((`p`.`id_pokemon` = `pt`.`id_pokemon`))) join `pokemon_types` `t` on((`pt`.`id_pokemon_type` = `t`.`id_pokemon_type`))) where ((`t`.`active` = 1) and (`p`.`active` = 1) and (`pt`.`active` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pokemon_by_generation__count`
--

/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_generation__count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pokemon_by_generation__count` AS select sum(`t`.`1G`) AS `1er_Generation`,sum(`t`.`2G`) AS `2da_Generation`,sum(`t`.`3G`) AS `3er_Generation`,sum(`t`.`4G`) AS `4ta_Generation`,sum(`t`.`5G`) AS `5ta_Generation`,sum(`t`.`6G`) AS `6ta_Generation`,sum(`t`.`7G`) AS `7ma_Generation` from (select sum((case when (`p`.`generation` = 1) then 1 else 0 end)) AS `1G`,sum((case when (`p`.`generation` = 2) then 1 else 0 end)) AS `2G`,sum((case when (`p`.`generation` = 3) then 1 else 0 end)) AS `3G`,sum((case when (`p`.`generation` = 4) then 1 else 0 end)) AS `4G`,sum((case when (`p`.`generation` = 5) then 1 else 0 end)) AS `5G`,sum((case when (`p`.`generation` = 6) then 1 else 0 end)) AS `6G`,sum((case when (`p`.`generation` = 7) then 1 else 0 end)) AS `7G` from `pokemons` `p` group by `p`.`generation`) `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medal_by_league`
--

/*!50001 DROP VIEW IF EXISTS `vw_medal_by_league`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medal_by_league` AS select `l`.`id_league` AS `id_league`,`m`.`id_medal` AS `id_medal`,`l`.`name` AS `league_name`,`m`.`name` AS `medal_name` from (`leagues` `l` join `medals` `m` on((`l`.`id_league` = `m`.`id_league`))) where ((`l`.`active` = 1) and (`m`.`active` = 1)) order by `l`.`name`,`m`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pokemon_by_gender`
--

/*!50001 DROP VIEW IF EXISTS `vw_pokemon_by_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pokemon_by_gender` AS select `sums`.`F` AS `female`,`sums`.`M` AS `male`,(`sums`.`M` + `sums`.`F`) AS `total` from (select sum(if((`pokemons`.`gender` = 'M'),1,0)) AS `M`,sum(if((`pokemons`.`gender` = 'F'),1,0)) AS `F` from `pokemons`) `sums` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_statistics_by_pokemon`
--

/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_statistics_by_pokemon` AS select `p`.`id_pokemon` AS `id_pokemon`,`s`.`id_statistics` AS `id_statistics`,`p`.`name` AS `pokemon_name`,`s`.`hp` AS `hp`,`s`.`attack` AS `attack`,`s`.`defense` AS `defense`,`s`.`sp_defense` AS `sp_defense`,`s`.`sp_attack` AS `sp_attack`,`s`.`speed` AS `speed` from (`pokemons` `p` join `statistics` `s` on((`p`.`id_pokemon` = `s`.`id_pokemon`))) where ((`p`.`active` = 1) and (`s`.`active` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medal_by_league__full`
--

/*!50001 DROP VIEW IF EXISTS `vw_medal_by_league__full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medal_by_league__full` AS select `l`.`id_league` AS `id_league`,`m`.`id_medal` AS `id_medal`,`l`.`name` AS `league_name`,`m`.`name` AS `medal_name` from (`leagues` `l` left join `medals` `m` on((`l`.`id_league` = `m`.`id_league`))) union select `l`.`id_league` AS `id_league`,`m`.`id_medal` AS `id_medal`,`l`.`name` AS `league_name`,`m`.`name` AS `medal_name` from (`medals` `m` left join `leagues` `l` on((`l`.`id_league` = `m`.`id_league`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_statistics_by_pokemon_types__max_score`
--

/*!50001 DROP VIEW IF EXISTS `vw_statistics_by_pokemon_types__max_score`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_statistics_by_pokemon_types__max_score` AS select `t`.`id_pokemon_type` AS `id_pokemon_type`,`t`.`name` AS `pokemon_type_name`,max(`s`.`hp`) AS `hp`,max(`s`.`attack`) AS `attack`,max(`s`.`defense`) AS `defense`,max(`s`.`sp_defense`) AS `sp_defense`,max(`s`.`sp_attack`) AS `sp_attack`,max(`s`.`speed`) AS `speed` from (((`pokemons` `p` join `pokemon_per_pokemon_types` `pt` on((`p`.`id_pokemon` = `pt`.`id_pokemon`))) join `pokemon_types` `t` on((`pt`.`id_pokemon_type` = `t`.`id_pokemon_type`))) join `statistics` `s` on((`p`.`id_pokemon` = `s`.`id_pokemon`))) where ((`t`.`active` = 1) and (`p`.`active` = 1) and (`pt`.`active` = 1) and (`s`.`active` = 1)) group by `t`.`id_pokemon_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_amount_pokemon_types`
--

/*!50001 DROP VIEW IF EXISTS `vw_amount_pokemon_types`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_amount_pokemon_types` AS select `t`.`id_pokemon_type` AS `id_pokemon_type`,`t`.`name` AS `pokemon_type_name`,count(`p`.`id_pokemon`) AS `amount_of_pokemons` from ((`pokemons` `p` join `pokemon_per_pokemon_types` `pt` on((`p`.`id_pokemon` = `pt`.`id_pokemon`))) join `pokemon_types` `t` on((`pt`.`id_pokemon_type` = `t`.`id_pokemon_type`))) where ((`t`.`active` = 1) and (`p`.`active` = 1) and (`pt`.`active` = 1)) group by `t`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07 20:28:49
