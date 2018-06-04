public with sharing class AccountController {
    @AuraEnabled
    public static Account[] findAll() {
        return [
            SELECT  id, name, location__latitude__s, location__longitude__s
            FROM    Account
            WHERE   location__latitude__s != null 
            AND     location__longitude__s != null
            LIMIT   50];
    }
}
