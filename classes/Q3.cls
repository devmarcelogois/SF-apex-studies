public class SolutionQ3 {
    public static List<String> validateAccounts(List<Map<String,Object>> accounts) {
        List<String> errors = new List<String>();
        Integer i = 1;
        for(Map<String,Object> acc : accounts) {
            String name = (String)acc.get('Name');
            Integer revenue = acc.get('AnnualRevenue') == null ? 0: (Integer)acc.get('AnnualRevenue');
            
            // escreva as validações aqui
            if (String.isBlank(name)){
                errors.add('Account '+ i + ': Name é obrigatório');
            }
            
            if (revenue<0){
                errors.add('Account '+ i + ': AnnualRevenue não pode ser negativo');
            }
            i++;
        }
        return errors;
    }
}
