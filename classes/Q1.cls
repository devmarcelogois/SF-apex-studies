public class Solution {
    public static Map<String, Integer> countByStage(List<String> stages) {
        Map<String, Integer> result = new Map<String, Integer>();

        for (String stage : stages) {
            if (result.containsKey(stage)) {
                result.put(stage, result.get(stage) + 1);
            } else {
                result.put(stage, 1);
            }
        }

        return result;
    }
}
