public class SolutionQ9 {
            //						  											   AccountId e Amount
    public static Map<String, Integer> sumAmountByAccount(List<Map<String,Object>> opportunities) {
        
        Map<String, Integer> totals = new Map<String, Integer>();
        
        // simule: SELECT AccountId, SUM(Amount)
        //         FROM Opportunity GROUP BY AccountId
		// Dada uma lista de Opportunities (cada uma com AccountId e Amount), retorne um Map com o total de Amount por AccountId.
		
        for (Map<String, Object> opp : opportunities){
            String oppId = (String) opp.get('AccountId');
            Integer amount = (Integer) opp.get('Amount');
            
            if (!totals.containsKey(oppId)){
                totals.put(oppId, amount);
                    } else {
                        Integer lastOppAmountValue = totals.get(oppId);
                        totals.put(oppId, lastOppAmountValue + amount); 
                    }
        } 
        
        return totals;
    }
}
