public class SolutionQ4 {
    public static Map<String, Integer> totalByAccount(List<Map<String,Object>> orders) {
        
        //orders(accountId, amount)
        // Colete os IDs em um Set, faça uma query só com WHERE Id IN :idSet, carregue num Map, depois processe a lista.
        
        Map<String, Integer> totals = new Map<String, Integer>();
        
        for (Map<String,Object> order : orders){
			String accountId = (String) order.get('accountId');
			Integer amount = (Integer) order.get('amount');

            if (totals.containsKey(accountId)){
                totals.put(accountId, totals.get(accountId) + amount);
            } else {
                totals.put(accountId, amount);
            }
        }
        
        // percorra os pedidos e some o amount por accountId
        // sem loop dentro de loop! 
        return totals;
    }
}
