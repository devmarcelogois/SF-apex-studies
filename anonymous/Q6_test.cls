List<String> entries = new List<String>{'R1', 'R2', 'R3', 'R4', 'R5'};

Integer batchSize = 2;
   
List<List<String>> result = SolutionQ6.createBatches(entries, batchSize);

System.debug(result);
