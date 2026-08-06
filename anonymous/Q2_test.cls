List<Map<String,Object>> leads = new List<Map<String,Object>>{
    new Map<String,Object>{'Name' => 'MAR', 'Score' => 23},
    new Map<String,Object>{'Name' => 'TU', 'Score' => 6},
    new Map<String,Object>{'Name' => 'SELMA', 'Score' => 56},
    new Map<String,Object>{'Name' => 'TELMA', 'Score' => 45},
    new Map<String,Object>{'Name' => 'CARLITO', 'Score' => 21}
};

List<Map<String,Object>> result = SolutionQ2.filterLeads(leads, 20);

System.debug(result);
