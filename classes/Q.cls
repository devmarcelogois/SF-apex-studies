public class SolutionQ8 {
    public static List<String> queryContactsByAccountIndustry(
        List<Map<String,Object>> contacts,
        List<Map<String,Object>> accounts,
        String industry
    ) {
        //Dada uma lista de Contacts (cada um com Name e AccountId)
        // Contacts: Name, AccountId
        // Accounts Id, Name, Industry
        // e uma lista de Accounts (cada um com Id, Name e Industry),
        //  retorne os nomes dos Contacts cujo Account tem a indústria especificada.
        //  
        //  contacts=[{Name:"Ana",AccountId:"A1"},{Name:"Bruno",AccountId:"A2"}], 
        //  accounts=[{Id:"A1",Name:"IBM",Industry:"Tech"},{Id:"A2",Name:"Nike",Industry:"Retail"}], 
        //  industry="Tech"
          
        List<String> result = new List<String>();
        
        // 1. crie Map<Id, Account> para lookup rápido
        Map<String,Map<String,Object>> accountMap = new Map<String,Map<String,Object>>();
		
        // Contacts: Name, AccountId
        // Accounts Id, Name, Industry

        // 2. percorra contacts, busque o Account no Map
        for(Map<String, Object> acc : accounts){
        	String accountId = (String) acc.get('Id');
            
            accountMap.put(accountId, acc);
        }
        
        for(Map<String, Object> ctt : contacts){
            String accountId = (String )ctt.get('AccountId');
            
            Map<String, Object> currentAcc = accountMap.get(accountId);
           	
            if (currentAcc != null && (String) currentAcc.get('Industry') == industry){
                result.add((String) ctt.get('Name'));
            }
        }

        return result;
    }
}
