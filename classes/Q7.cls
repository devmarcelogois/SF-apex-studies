public class SolutionQ7 {
    public static List<String> queryByIndustry(
        List<Map<String,Object>> accounts,
        String targetIndustry
    ) {
        List<String> result = new List<String>();
        // simule: SELECT Name FROM Account WHERE Industry = :targetIndustry
		
        for (Map<String, Object> acc : accounts){
            if (((String) acc.get('Industry')) == targetIndustry){
                result.add((String) acc.get('Name'));
            }    
        } 
        
        return result;
    }
}
