List<Map<String, Object>> entries = new List<Map<String, Object>>{
    new Map<String, Object>{'Name' => 'Acme', 'Industry' => 'Tech'},
    new Map<String, Object>{'Name' => 'IBM', 'Industry' => 'Tech'},
    new Map<String, Object>{'Name' => 'Walmart', 'Industry' => 'Retail'}
};
        
List<String> result = SolutionQ7.queryByIndustry(entries, 'Tech');

System.debug(result);
