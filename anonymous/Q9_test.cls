List<Map<String, Object>> entries = new List<Map<String, Object>>{
    new Map<String, Object>{'AccountId' => 'A1', 'Amount' => 100},
    new Map<String, Object>{'AccountId' => 'A2', 'Amount' => 200},
    new Map<String, Object>{'AccountId' => 'A1', 'Amount' => 50}    
};
    
Map<String, Integer> result = SolutionQ9.sumAmountByAccount(entries);

System.debug(result);
