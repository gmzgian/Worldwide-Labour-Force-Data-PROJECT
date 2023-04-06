SELECT `t0`.`Age_ranges` AS `Age_ranges`,
  `t0`.`Country` AS `Country`,
  `t0`.`Currency` AS `Currency`,
  `t0`.`Economic_activity` AS `Economic_activity`,
  `t0`.`Education_level` AS `Education_level`,
  `t0`.`Population` AS `Population`,
  `t0`.`Table_Name` AS `Table_Name`,
  `t0`.`indicator` AS `indicator`,
  `t0`.`obs_value` AS `obs_value`,
  `t0`.`obs_value_in_thousands` AS `obs_value_in_thousands`,
  `t0`.`ref_area` AS `ref_area`,
  `t0`.`sex` AS `sex`,
  `t0`.`source` AS `source`,
  `t0`.`time` AS `time`
FROM (
  
  SELECT `t1`.`Age_ranges` AS `Age_ranges`, `t1`.`Country` AS `Country`, `t1`.`Currency` AS `Currency`, `t1`.`Economic_activity` AS `Economic_activity`, `t1`.`Education_level` AS `Education_level`, `t1`.`Population` AS `Population`, `t1`.`Table_Name` AS `Table_Name`, `t1`.`indicator` AS `indicator`, `t1`.`obs_value` AS `obs_value`, `t1`.`obs_value_in_thousands` AS `obs_value_in_thousands`, `t1`.`ref_area` AS `ref_area`, `t1`.`sex` AS `sex`, `t1`.`source` AS `source`, `t1`.`time` AS `time`
  FROM (
    SELECT `Working-age population by sex age and education - thousands`.`Age_ranges` AS `Age_ranges`,
      CAST(NULL AS STRING) AS `Country`,
      CAST(NULL AS STRING) AS `Currency`,
      CAST(NULL AS STRING) AS `Economic_activity`,
      `Working-age population by sex age and education - thousands`.`Education_level` AS `Education_level`,
      `Working-age population by sex age and education - thousands`.`Population` AS `Population`,
      'Working-age population by sex age and education - thousands' AS `Table_Name`,
      `Working-age population by sex age and education - thousands`.`indicator` AS `indicator`,
      CAST(CAST(NULL AS STRING) AS FLOAT64) AS `obs_value`,
      `Working-age population by sex age and education - thousands`.`obs_value_in_thousands` AS `obs_value_in_thousands`,
      `Working-age population by sex age and education - thousands`.`ref_area` AS `ref_area`,
      `Working-age population by sex age and education - thousands`.`sex` AS `sex`,
      `Working-age population by sex age and education - thousands`.`source` AS `source`,
      `Working-age population by sex age and education - thousands`.`time` AS `time`
    FROM `local-bliss-375412.project_data_bq`.`Working-age population by sex age and education - thousands` `Working-age population by sex age and education - thousands`
  ) `t1`
  
   UNION  ALL 
  
  SELECT `t2`.`Age_ranges` AS `Age_ranges`, `t2`.`Country` AS `Country`, `t2`.`Currency` AS `Currency`, `t2`.`Economic_activity` AS `Economic_activity`, `t2`.`Education_level` AS `Education_level`, `t2`.`Population` AS `Population`, `t2`.`Table_Name` AS `Table_Name`, `t2`.`indicator` AS `indicator`, `t2`.`obs_value` AS `obs_value`, `t2`.`obs_value_in_thousands` AS `obs_value_in_thousands`, `t2`.`ref_area` AS `ref_area`, `t2`.`sex` AS `sex`, `t2`.`source` AS `source`, `t2`.`time` AS `time`
  FROM (
    SELECT CAST(NULL AS STRING) AS `Age_ranges`,
      `Average monthly earnings of employees by sex and economic activity`.`Country` AS `Country`,
      `Average monthly earnings of employees by sex and economic activity`.`Currency` AS `Currency`,
      `Average monthly earnings of employees by sex and economic activity`.`Economic_activity` AS `Economic_activity`,
      CAST(NULL AS STRING) AS `Education_level`,
      CAST(CAST(CAST(NULL AS STRING) AS FLOAT64) AS INT64) AS `Population`,
      'Average monthly earnings of employees by sex and economic activity' AS `Table_Name`,
      `Average monthly earnings of employees by sex and economic activity`.`indicator` AS `indicator`,
      `Average monthly earnings of employees by sex and economic activity`.`obs_value` AS `obs_value`,
      CAST(CAST(NULL AS STRING) AS FLOAT64) AS `obs_value_in_thousands`,
      CAST(NULL AS STRING) AS `ref_area`,
      `Average monthly earnings of employees by sex and economic activity`.`sex` AS `sex`,
      CAST(NULL AS STRING) AS `source`,
      `Average monthly earnings of employees by sex and economic activity`.`time` AS `time`
    FROM `local-bliss-375412.project_data_bq`.`Average monthly earnings of employees by sex and economic activity` `Average monthly earnings of employees by sex and economic activity`
  ) `t2`
  
) `t0`