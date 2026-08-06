public class SolutionQ2 {
    public static List<Map<String,Object>> filterLeads(List<Map<String,Object>> leads, Integer threshold) {
        List<Map<String,Object>> result = new List<Map<String,Object>>();
        
        // 1. filtre os leads com Score >= threshold	
		for (Map<String,Object> lead : leads) {
            Integer score = (Integer)lead.get('Score');
            if (score >= threshold){
                result.add(lead);
            }
        }
        // 2. ordene por Score decrescente
        for (Integer i = 0; i < result.size() - 1; i++) {
            for (Integer j = 0; j < result.size() - i - 1; j++) {
                Integer scoreA = (Integer) result.get(j).get('Score');
                Integer scoreB = (Integer) result.get(j+1).get('Score');
                
                if (scoreA < scoreB) {
                    // troca os dois
                    Map<String,Object> temp = result.get(j);
                    result.set(j, result.get(j+1));
                    result.set(j+1, temp);
                }
            }
		}
        return result;
	}
}

