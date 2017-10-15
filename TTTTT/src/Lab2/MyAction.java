package Lab2;

public class MyAction{
	   private String name;

	   public String execute() throws Exception {
		  System.out.println("adadadadad");
	      return "success";
	   }

	   public String getName() {
	      //return name;
	      if (name.length() > 0)
	    	return "success";
	      else
	    	return "failure";
	   }

	   public void setName(String name) {
	      this.name = name;
	   }
	}