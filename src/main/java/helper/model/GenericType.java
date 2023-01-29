package helper.model;

public class GenericType<Type> {
    Type val;
    public GenericType(Type val) { 
    	this.val = val; 
    }
    public Type get() { 
    	return this.val; 
    }
    public void set(Type val) {
    	this.val = val;
    }
}
