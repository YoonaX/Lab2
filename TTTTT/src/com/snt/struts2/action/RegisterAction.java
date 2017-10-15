package com.snt.struts2.action;

import Connect.Connect;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;


public class RegisterAction extends ActionSupport {


	     private static String ChangeAuthor = "NO";

	     private static String username;
         private static String password;
         private static String repassword;

         private static List<String> Judge = new LinkedList<String>();

         private static List<String> list1 = new LinkedList<String>();
         private static List<String> list11 = new LinkedList<String>();
         private static List<String> list = new LinkedList<String>();
         private static List<String> list0 = new LinkedList<String>();
         ServletRequest request = ServletActionContext.getRequest();
         HttpServletRequest req = (HttpServletRequest) request;
         HttpSession session = req.getSession();

         private static String authorname;
         private static String authorage;
         private static String authorcountry;

         private static String isbn;
         private static String title;
         private static String authorid;
         private static String publisher;
         private static String publishdate;
         private static String price;

         static String  AddBook;

          public String getAuthorid() {
              return authorid;
          }
          public void setAuthorid(String authorid) {
              this.authorid = authorid;
          }

           public String getPassword() {
		             return password;
		   }
		   public void setPassword(String password) {
		             this.password = password;
		   }
		   public String getRepassword() {
		             return repassword;
		   }
		   public void setRepassword(String repassword) {
		             this.repassword = repassword;
		   }
		   public String getUsername() {
		             return username;
		   }
		   public void setUsername(String username) {
		             this.username = username;
		   }

		   public String getAuthorname(){
		        return authorname;
		    }
		   public void setAuthorname(String authorname){
		        this.authorname =  authorname;
		    }
		    public String getAuthorage(){
		        return authorage;
		    }
		    public void setAuthorage(String authorage){
		        this.authorage =  authorage;
		    }
		    public String getAuthorcountry(){
		        return authorcountry;
		    }
		    public void setAuthorcountry(String authorcountry){
		        this.authorcountry =  authorcountry;
		    }

		   public String getIsbn(){
		        return isbn;
		    }
		   public void setIsbn(String isbn) {
		        this.isbn = isbn;
		    }
		    public String getTitle(){
		        return title;
		    }
		    public void setTitle(String title) {
		        this.title = title;
		    }
		    public String getPublisher() {
		        return publisher;
		    }
		    public void setPublisher(String publisher) {
		        this.publisher = publisher;
		    }
		    public String getPublishdate() {
		        return publishdate;
		    }
		    public void setPublishdate(String publishdate) {
		        this.publishdate = publishdate;
		    }
		    public String getPrice() {
		        return price;
		    }
		    public void setPrice(String price) {
		        this.price = price;
		    }

		    public String Get()
	       {
	           int Flag = 1;

	           if(null == username || username.length()<1)
	           {
	               this.addFieldError("用户名", "用户名不为空！");
	               Flag = 0;
	           }
	           else
	           {
	        	   Connect C = new Connect();
	        	   String sql2 = "select * from user where username = " + "'" + username + "'";

	    		   Judge  = C.select(sql2);

	        	   if (Judge.size() > 0)
	        	   {
	        		   Flag = 0;
		               this.addFieldError("提示","该用户已经注册过了");
	        	   }
	           }
	           if(null==password ||  password.length()<6)
	           {
	            	this.addFieldError("密码", "密码长度请大于6！");
	            	Flag = 0;
	           }
	           else if(null==repassword ||  repassword.length()<6)
	           {
	                this.addFieldError("重复密码", "密码长度请大于6！");
	                Flag = 0;
	           }
	           else if(!password.equals(repassword))
	           {
	                this.addFieldError("两次密码", "两次输入密码请一致!");
	                Flag = 0;
	           }
               if (Flag == 1)
               {
            	   this.addFieldError("成功", "注册成功");

            	   Connect C = new Connect();

            	   String sql= "insert into user (username, password) values ( +" + "'"+username+"'" + "," +"'"+ password+"'" + ")";

	        	   C.insert(sql);

                   return "success";
               }
               else
                   return "failure";
	       }


	   public String FindByAuthor()
	   {
		   String sql0 ="select * from author where authorname = " + "'"+ authorname + "'";
		   Connect connect = new Connect();
		   list0 = connect.select(sql0);
		   if (list0.size() == 0)
		       return "Failure1";
		   String sql1 = "select title from book where authorid = " + "'"+ list0.get(0) + "'";
		   System.out.print(list0.get(0));
		   list = connect.select(sql1);
		   session.setAttribute("list0", list0);
		   session.setAttribute("list", list);
		   session.setAttribute("authorname", authorname);
		   if(list.size() == 0)
	           return "F2";

		   list1.clear();
		   for (int i = 0; i < list.size(); i++)
		   {
			   sql1 = "select isbn from book where title = " + "'"+ list.get(i) + "'";
			   Judge = connect.select(sql1);
			   list1.add(Judge.get(0));
		   }
		   session.setAttribute("list1", list1);
	       return "success";
	   }

	   public String  GetAllTitle()
	   {
		   System.out.print("ASDKLJKLJKLJKL");
		   Connect connect = new Connect();

		   String sql2 = "select isbn from book";

		   list1=connect.select(sql2);

		   list11.clear();
		   Judge.clear();
		   for (int i = 0; i < list1.size(); i++)
		   {
			   sql2 = "select title from book where isbn = " + "'" + list1.get(i) +  "'";
			   Judge = connect.select(sql2);
			   list11.add(Judge.get(0));
		   }


		   session.setAttribute("list11", list11);
		   session.setAttribute("list1",  list1);
		   return "success";

	   }

	   public String  GetAllDetail()
	   {
		   Connect connect = new Connect();

		   String sql2 = "select * from book where isbn = " + "'" + isbn + "'";
		   System.out.println("xxxxxxxxxxxxxx");

		   list1=connect.select(sql2);

		   for (int i = 0; i < list1.size(); i++)
			   System.out.print(list1.get(i) + " ");
		   System.out.print("\n");
		   session.setAttribute("list1", list1);

		   String sql0 = "select * from author where authorid = " + "'" + list1.get(2) + "'";
		   list0=connect.select(sql0);
		   session.setAttribute("list0", list0);

		   return "success";

	   }

	   public String  GetDetail()
	   {
		   Connect connect = new Connect();
		   String sql0 ="select * from author where authorname = " + "'"+ authorname + "'";
		   list0 = connect.select(sql0);

		   for (int i = 0; i < list0.size(); i++)
			   System.out.print(list0.get(i) + " ");
		   System.out.print("\n");
		   String sql2 = "select * from book where title = " + "'" + title + "'";

		   list1=connect.select(sql2);

		   for (int i = 0; i < list1.size(); i++)
			   System.out.print(list1.get(i) + " ");
		   System.out.print("\n");
		   session.setAttribute("list1", list1);
		   session.setAttribute("list0", list0);
		   return "success";

	   }

	   public String delete()
	   {
		   System.out.print("saaaaaaaXXXXXXXXXXXXXX" + authorname);
		   Connect connect = new Connect();
		   String sql0 ="select * from author where authorname = " + "'" + authorname + "'";
		   list0 = connect.select(sql0);
		  		   System.out.print("saaaaaaa             " + list0.get(0));
		   String sql1 ="delete from book where title =  " + "'" + title + "'";
		   connect.delete(sql1);

		   sql1 = "select authorid from author where authorname = " + "'" + authorname + "'";

		   Judge = connect.select(sql1);

		   String Temp = Judge.get(0);

		   sql1 = "select * from book where authorid = " + "'" + Judge.get(0) + "'";

		   Judge = connect.select(sql1);

		   if (Judge.size() == 0)
		   {
			   sql1 ="delete from author where authorid =  " + "'" + Temp + "'";
			   connect.delete(sql1);
			   return "success1";
		   }
	       return "success";
	   }


	   public String GetAllBook()
	   {
		   String sql0="select title from book";

		   Connect connect = new Connect();
		   list=connect.select(sql0);
		   session.setAttribute("list", list);

		   System.out.print("ZZZZZZZZZZZZZZZZZZZ");
	       return "success";
	  }

	   public String edit()
	   {
		   String sql ="update book set authorid = " +  "'" + authorid  + "'" + ", publisher = " + "'" + publisher + "'" + ", publishdate = " + "'" + publishdate + "'" + ", price= " + price + "'" + "where isbn = " + "'" + "isbn" + "'";
		   String sql0="select * from author where authorname=" + "'" + authorname + "'";
		   Connect connect = new Connect();
		   list=connect.select(sql0);
		   list0=connect.select("select authorid from Author");
		   if (list.size() == 0)
		   {
			   if (list0.size() == 0)
				   authorid = "1";
			   else
				   authorid=String.valueOf(Integer.parseInt(Collections.max(list0))+1);
		   }
		   else
			   authorid = list.get(0);

		   if(list.size()==0)
	            return "ADD";

		    boolean x = connect.update(sql);
	        if(x == true)
	            return "success";
	        else
	            return "failure";

	  }



	   public String ChangePrice()
       {
           int Flag = 1;
		   if(null == title || title.length()<1)
           {
        	   this.addFieldError("title", "书名不为空");
               Flag = 0;
           }
    	   else
    	   {
    		   String sql0="select * from book where title=" + "'" + title + "'";
    		   Connect connect = new Connect();
    		   list=connect.select(sql0);
    		   if (list.size() == 0)
    		   {
    			   this.addFieldError("title", "书名不在库中");
    			   Flag = 0;
    		   }
    	   }
           if(null == price ||  price.length()<1)
           {
               this.addFieldError("价格","价格不为空");
               System.out.print("asssssssssss " + title + "dsdsds d1" + price);
               Flag = 0;
           }
           else
           {
	           for (int i = 0; i < price.length(); i++)
	           {
	        	   if (price.charAt(i) < '0' || price.charAt(i) > '9')
	        	   {
	        		   System.out.print("asssssssssss " + title + "dsdsds d2" + price);
	                   this.addFieldError("价格", "价格为整数");
	                   Flag = 0;
	                   break;
	        	   }
	           }
           }
           if (Flag == 0)
        	   return "failure";
           Connect connect = new Connect();
           String sql ="update book set price = " + "'" + price  + "'" + " where title = " + "'" + title + "'";

           connect.update(sql);

           session.setAttribute("title", title);
           return "success";
       }

	   public String ChangePublisher()
	   {
		   int Flag = 1;
		   if(null == title || title.length()<1)
           {
        	   this.addFieldError("title", "书名不为空");
               Flag = 0;
           }
    	   else
    	   {
    		   String sql0="select * from book where title=" + "'" + title + "'";
    		   Connect connect = new Connect();
    		   list=connect.select(sql0);
    		   if (list.size() == 0)
    		   {
    			   this.addFieldError("title", "书名不在库中");
    			   Flag = 0;
    		   }
    	   }

           if(null== publisher ||  publisher.length()<1)
           {
                this.addFieldError("出版社", "出版社不为空");
                Flag = 0;
           }
           else
           {
        	   int F = 0;
        	   for (int i = 0; i < publisher.length(); i++)
               {
            	   if (publisher.charAt(i) != ' ')
            	   {
            		   F = 1;
            		   break;
            	   }
               }
        	   if (F == 0)
        	   {
                       this.addFieldError("出版社", "出版社不为空");
                       Flag  = 0;
               }
            }
           if (Flag == 0)
        	   return "failure";
           Connect connect = new Connect();
           String sql ="update book set publisher = " + "'" + publisher + "'" +  " where title = " + "'" + title + "'";
           connect.update(sql);
           return "success";
	   }

       public String ChangePublishdate()
       {
    	   int Flag = 1;
		   if(null == title || title.length()<1)
           {
        	   this.addFieldError("title", "书名不为空");
               Flag = 0;
           }
    	   else
    	   {
    		   String sql0="select * from book where title=" + "'" + title + "'";
    		   Connect connect = new Connect();
    		   list=connect.select(sql0);
    		   if (list.size() == 0)
    		   {
    			   this.addFieldError("title", "书名不在库中");
    			   Flag = 0;
    		   }
    	   }

    	   if(null== publishdate ||  publishdate.length()<1)
    	   {
    		   this.addFieldError("出版日期", "出版日期不为空");
        	   Flag = 0;
    	   }
           else
           {
        	   String[] Str = publishdate.split("/");
        	   if (Str.length != 3)
        	   {
        		   this.addFieldError("出版日期", "出版日期格式不正确");
        		   Flag = 0;
        	   }

        	   for (int i = 0; i < Str.length; i++)
               {
            	   for (int j = 0; j < Str[i].length(); j++)
            		   if (Str[i].charAt(j) < '0' || Str[i].charAt(j) > '9')
            		   {
            			   this.addFieldError("出版日期", "出版日期格式不正确");
            			   Flag = 0;
            		   }
               }
            }
    	   if (Flag == 0)
    		   return "failure";
    	   Connect connect = new Connect();
           String sql ="update book set publishdate = " + "'" + publishdate  +  "'" + " where title = " + "'" + title + "'";
           connect.update(sql);
           return "success";
       }


       public String ChangeAuthor()
       {
    	   int Flag = 1;
    	   if(null == title || title.length()<1)
           {
        	   this.addFieldError("title", "书名不为空");
               Flag = 0;
           }
    	   else
    	   {
    		   String sql0="select * from book where title=" + "'" + title + "'";
    		   Connect connect = new Connect();
    		   list=connect.select(sql0);
    		   if (list.size() == 0)
    		   {
    			   this.addFieldError("title", "书名不在库中");
    			   Flag = 0;
    		   }
    	   }


           if(null == authorname || authorname.length()<1)
           {
        	   this.addFieldError("名字", "作者名不为空");
               Flag = 0;
           }
           else
           {
        	   int F = 0;
        	   for (int i = 0; i < authorname.length(); i++)
               {
            	   if (authorname.charAt(i) != ' ')
            	   {
            		   F = 1;
            		   break;
            	   }
               }
        	   if (F == 0)
        	   {
                       this.addFieldError("名字", "作者名不为空");
                       Flag = 0;
               }
            }

           if(null == authorage ||  authorage.length()<1)
           {
               this.addFieldError("年龄","年龄不为空");
               Flag = 0;
           }
           else
           {
	           for (int i = 0; i < authorage.length(); i++)
	           {
	        	   if (authorage.charAt(i) < '0' || authorage.charAt(i) > '9')
	        	   {
	                   this.addFieldError("年龄", "年龄为整数");
	                   Flag = 0;
	                   break;
	        	   }
	           }
           }
           if(null==authorcountry ||  authorcountry.length()<1)
           {
                this.addFieldError("国家", "国家不为空");
                Flag = 0;
           }
           else
           {
        	   int F = 0;
        	   for (int i = 0; i < authorcountry.length(); i++)
               {
            	   if (authorcountry.charAt(i) != ' ')
            	   {
            		   F = 1;
            		   break;
            	   }
               }
        	   if (F == 0)
        	   {
                       this.addFieldError("国家", "国家不为空");
                       Flag = 0;
               }
            }

           if (Flag == 0)
           {
        	   System.out.print("ZZZZZZZZZZZZZZxXXXXXXXXXXX");
               return "failure";
           }
           else
           {
        	   ChangeAuthor = "NO";
        	   Connect connect = new Connect();
        	   String JString = "select authorid from  book where title =" + "'" + title + "'";
        	   Judge = connect.select(JString);
        	   JString = "select title from  book where authorid =" + "'" + Judge.get(0) + "'";
        	   Judge = connect.select(JString);

        	   if (Judge.size() == 1)
        	   {
        		   JString = "select authorid from  book where title =" + "'" + Judge.get(0) + "'";
        		   Judge = connect.select(JString);
        		   JString = "select authorname from  author where authorid =" + "'" + Judge.get(0) + "'";
        		   Judge = connect.select(JString);
        		   ChangeAuthor = "OK";
        		   session.setAttribute("ChangeAuthor", ChangeAuthor);
        		   session.setAttribute("Judge", Judge);
        		   String sql1 ="delete from author where authorname =  " + "'" + Judge.get(0) + "'";
    			   connect.delete(sql1);
        	   }


    		   String sql0="select * from  author where authorname=" + "'" + authorname + "'";


    		   list=connect.select(sql0);

    		   list0=connect.select("select authorid from author");
    		   if (list.size() == 0)
    		   {
    			   if (list0.size() == 0)
    				   authorid = "1";
    			   else
    				   authorid=String.valueOf(Integer.parseInt(Collections.max(list0))+1);
    		   }
    		   else
    			   authorid = list.get(0);

    		   if(list.size()==0)
    	       {
    			   AddBook = "NEW";
    			   String sq0 ="insert into author(authorid, authorname, authorage, authorcountry) values(" + "'" + authorid + "'" +"," +  "'" + authorname + "'" +"," + "'" + authorage + "'" +"," + "'" + authorcountry + "'" +")";
		           connect.insert(sq0);
    	       }
    		   else
    		   {
    			   AddBook = "OLD";
    			   String sql ="update author set authorname = " + "'" + authorname + "'" +  " where authorid = " + "'" + authorid + "'";
    			   connect.update(sql);
    			   sql ="update author set authorage = " + "'" + authorage + "'" +  " where authorid = " + "'" + authorid + "'";
    			   connect.update(sql);
    			   sql ="update author set authorcountry = " + "'" + authorcountry + "'" +  " where authorid = " + "'" + authorid + "'";
    			   connect.update(sql);
    		   }

    		   session.setAttribute("AddBook", AddBook);

    		   System.out.println("asssssssssssssssssssssssssssssssssss    " + title);
    		   String sql ="update book set authorid = " + "'" + authorid + "'" +  " where title = " + "'" + title + "'";
               connect.update(sql);



    	       return "success";
           }
        }

	       public String GetX()
	       {
	           int Flag = 1;
	           if(null==username || username.length()<1)
	           {
	               Flag = 0;
	               this.addActionError("用户名不能为空");
	           }

	           if(null==password ||  password.length()<6)
	           {
	            	Flag = 0;
	            	this.addActionError("密码不能为空");
	           }
               if (Flag == 1)
               {
            	   Connect C = new Connect();

	        	   String sql2 = "select * from user where username = " + "'" + username + "'";
	    		   Judge  = C.select(sql2);

	        	   if (Judge.size() > 0)
	        		   return "success";
	        	   else
	        	   {
	        		   this.addActionError("用户名不能为空");
	        		   return "failure";
	        	   }
               }
               else
                	return "failure";
	       }


	       public String JudgeBook()
	       {

	           if(null == authorage ||  authorage.length()<1)
	        	   return "failure";
	           else
	           {
		           for (int i = 0; i < authorage.length(); i++)
		           {
		        	   if (authorage.charAt(i) < '0' || authorage.charAt(i) > '9')
		        		   return "failure";
		           }
	           }
	           if(null==authorcountry ||  authorcountry.length()<1)
	        	   return "failure";
	           else
	           {
	        	   int F = 0;
	        	   for (int i = 0; i < authorcountry.length(); i++)
	               {
	            	   if (authorcountry.charAt(i) != ' ')
	            	   {
	            		   F = 1;
	            		   break;
	            	   }
	               }
	        	   if (F == 0)
	        		   return "failure";
	            }

	           if(null == authorname || authorname.length()<1)
	               return "failure";
	           else
	           {
	        	   int F = 0;
	        	   for (int i = 0; i < authorname.length(); i++)
	               {
	            	   if (authorname.charAt(i) != ' ')
	            	   {
	            		   F = 1;
	            		   break;
	            	   }
	               }
	        	   if (F == 0)
	        		   return "failure";
	            }

	           if(null == title || title.length()<1)
	               return "failure";
	           else
	           {
	        	   int F = 0;
	        	   for (int i = 0; i < title.length(); i++)
	               {
	            	   if (title.charAt(i) != ' ')
	            	   {
	            		   F = 1;
	            		   break;
	            	   }
	               }
	        	   if (F == 0)
	        		   return "failure";
	            }

	           if(null == publisher || publisher.length()<1)
	               return "failure";
	           else
	           {
	        	   int F = 0;
	        	   for (int i = 0; i < publisher.length(); i++)
	               {
	            	   if (publisher.charAt(i) != ' ')
	            	   {
	            		   F = 1;
	            		   break;
	            	   }
	               }
	        	   if (F == 0)
	        		   return "failure";
	            }


	           if(null == price ||  price.length()<1)
	        	   return "failure";
	           else
	           {
		           for (int i = 0; i < price.length(); i++)
		           {
		        	   if (price.charAt(i) < '0' || price.charAt(i) > '9')
		        		   return "failure";
		           }
	           }

	           if(null== publishdate ||  publishdate.length()<1)
	        	   return "failure";
	           else
	           {
	        	   String[] Str = publishdate.split("/");
	        	   if (Str.length != 3)
	        		   return "failure";
	        	   for (int i = 0; i < Str.length; i++)
	               {
	            	   for (int j = 0; j < Str[i].length(); j++)
	            		   if (Str[i].charAt(j) < '0' || Str[i].charAt(j) > '9')
	            			   return "failure";
	               }
	            }

	           if(null== isbn ||  (isbn.length() != 10 && isbn.length() != 13))
	        	   return "failure";
	           else
	           {
	        	   for (int i = 0; i < isbn.length(); i++)
	               {
            		   if (isbn.charAt(i) < '0' || isbn.charAt(i) > '9')
            			   return "failure";
	               }
	            }

	           System.out.println(authorname + " " + authorage + " " + authorcountry + " " + isbn + " " + title + " " + " " + publisher + " " + publishdate + " " + price);


		       String sql0="select * from author where authorname= " + "'" + authorname + "'";
		       Connect connect = new Connect();
		       list = connect.select(sql0);
		       list0 = connect.select("select authorid from author");
		       if(list.size()==0)
		       {
		    	   if(list0.size()==0)
		                authorid="1";
		            else
		                authorid=String.valueOf(Integer.parseInt(Collections.max(list0))+1);
		       }
		       else
		           authorid=list.get(0);

		       String sql;//="insert into book(isbn, title, authorid, publisher, publishdate, price) values(" + "'" + isbn+ "'" +"," + "'" +  title + "'" +"," + "'" + authorid + "'" +"," + "'" + publisher + "'" + ","+ "'" + publishdate + "'" + "," +"'"+ price + "'" + ")";

		       String sqlx = "select * from book where isbn = " + "'" + isbn + "'";
		       Judge = connect.select(sqlx);

		       if (Judge.size() > 0)
		    	    return "failure2";

		       sqlx = "select * from book where title = " + "'" + title + "'";
		       Judge = connect.select(sqlx);

		       if (Judge.size() > 0)
		    	    return "failure3";


		       if(list.size()==0)
		       {
		           AddBook = "NEW";
		           sql ="insert into author(authorid, authorname, authorage, authorcountry) values(" + "'" + authorid + "'" +"," + "'" + authorname + "'" + ","+  "'" + authorage + "'" + "," + "'" + authorcountry + "'" +")";
		           System.out.print(authorid +"," +  authorname +"," + authorage +"," + authorcountry );
		           connect.insert(sql);
		       }
		       else
		    	   AddBook = "OLD";

		       sqlx = "select * from book where title = " + "'" + title + "'";
		       list1 = connect.select(sqlx);
		       session.setAttribute("list1", list1);
		       session.setAttribute("list0", list0);
		       session.setAttribute("list", list);

		       sql="insert into book(isbn, title, authorid, publisher, publishdate, price) values(" + "'" + isbn+ "'" +"," + "'" +  title + "'" +"," + "'" + authorid + "'" +"," + "'" + publisher + "'" + ","+ "'" + publishdate + "'" + "," +"'"+ price + "'" + ")";

		       boolean x = connect.insert(sql);

		       if (x == true)
		       {
		    	   session.setAttribute("AddBook", AddBook);
		           return "success";
		       }
		       else
		    	   return "failure3";


	       }

	       public String GetAllAuthor()
	       {
	    	   String sql0="select authorname from  author";
    		   Connect connect = new Connect();
    		   list=connect.select(sql0);
    		   session.setAttribute("list", list);
    		   if (list.size() == 0)
    			   return "failure";
    		   else
    			   return "success";
	       }

	       public void GetPC()
	       {
	    	   session.setAttribute("title", title);
	       }
}