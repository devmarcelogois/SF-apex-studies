List<Map<String, Object>> contacts = new List<Map<String, Object>>{
    new Map<String, Object>{'Name' => 'Ana', 'AccountId' => 'A1'},
    new Map<String, Object>{'Name' => 'Bruno', 'AccountId' => 'A2'}
};

List<Map<String, Object>> accounts = new List<Map<String, Object>>{
    new Map<String, Object>{'Id' => 'A1', 'Name' => 'IBM', 'Industry' => 'Tech'},
    new Map<String, Object>{'Id' => 'A2', 'Name' => 'Nike', 'Industry' => 'Retail'}
};
    
List<String> result = SolutionQ8.queryContactsByAccountIndustry(contacts, accounts, 'Tech');

System.debug(result);
