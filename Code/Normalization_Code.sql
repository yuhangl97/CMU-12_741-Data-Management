SELECT  st.MonitoringLocationName, ac.ActivityStartDate, br.CharacteristicName, br.ResultMeasureValue, br.`ResultMeasure/MeasureUnitCode`
FROM  `12_741_Project`.`activityall` as ac INNER JOIN `12_741_Project`.`biologicalresult` as br 
ON br.ActivityIdentifier = ac.ActivityIdentifier
LEFT JOIN `12_741_Project`.`station12` as st
ON ac.MonitoringLocationIdentifier = st.MonitoringLocationIdentifier
WHERE br.CharacteristicName = 'Phosphorus' and br.ResultMeasureValue > 0.10
