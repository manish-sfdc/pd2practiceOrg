public class UndefinedSObjectTypeException extends Exception {

// typeName must be a valid API name (i.e. custom objects should be suffixed with "__c"):
public static SObject newSObject(String typeName) {
    Schema.SObjectType targetType = Schema.getGlobalDescribe().get(typeName);
    if (targetType == null) {
        // calling code should usually handle this exception:
        throw new UndefinedSObjectTypeException('The requested SObject type [' + typeName + 
                '] cannot be constructed; it is not configured on this org.');
    }
    // SObjects offer the only way in Apex to instantiate an object with a type determined at 
    // runtime -- you can optionally pass an Id argument to instantiate an SObject for an 
    // existing record:
    return targetType.newSObject();
}

public static SObject newOpptyTeamMember() {
    return newSObject('Account');
}
}