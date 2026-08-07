public class SolutionQ5 {
    public static List<Map<String,Object>> deduplicateContacts(List<Map<String,Object>> contacts) {
            List<Map<String,Object>> result = new List<Map<String,Object>>();
            Set<String> seen = new Set<String>();
        
            // percorra os contatos e adicione ao result
            for (Map<String, Object> contact : contacts){
                String email = (String) contact.get('Email');
                
                if(seen.add(email)){
                    seen.add(email);
                    result.add(contact); 
                }	     
            }
        	// apenas se o email ainda não foi visto

            return result;
        }
}
