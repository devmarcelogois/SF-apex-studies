List<String> stages = new List<String>{
    'Prospecting','Closed Won','Prospecting','Closed Lost','Closed Won','Closed Won'
};

Map<String, Integer> result = Solution.countByStage(stages);
System.debug(result);
