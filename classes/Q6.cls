public class SolutionQ6 {
    
    public static List<String> subList (List<String> originalList, Integer start, Integer endIndex){       
        List<String> result = new List<String>();
        for (Integer i = start; i < endIndex && i < originalList.size(); i++) {
    			result.add(originalList.get(i));
		}
        return result;
    }

    
    public static List<List<String>> createBatches(List<String> records, Integer batchSize) {
        List<List<String>> batches = new List<List<String>>();

        if (records == null || records.isEmpty()) {
            return batches;
        }


        for (Integer i = 0; i < records.size(); i+=batchSize){
            List<String> currentRecords = subList(records, i, i+batchSize); 
            batches.add(currentRecords);
        }
            
        return batches;
	}
}
