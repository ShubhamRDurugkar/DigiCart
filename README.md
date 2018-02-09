# DigiCart
E-Commerce Project for online shopping

1. We created the maven webapp front end
2. Added spring mvc dependencies.
3. Create the MVC structure--> com.controller, web-inf/views/index.jsp[bootstrap]
4. created web.xml
5.dispatcher-servlet.xml
6. created the maven quick start back end project
7. Added dependencies in back end pom.xml
{spring-core, spring-web, spring-tx, hibernate-core, entitymanager, validator,
   etc etc}. We also added the backend pom jar to front end.
8. created com.model,com.config,com.dao, com.daoimpl packages. We also 
9. Configured hiberConfig.java
    a) created autowired beans for database connectivity
    b) created autowired beans for hibernate dialect and syntax
    c) created autowired beans for hibernate transaction management
    

10. Create the User model class 
11. Create the table in H2
12. We create CRUD method in DAO--> Defined it in DaoImpl
13. Added the autowired DaoImpl bean in hiberConfig.java
14. Created the register.jsp as per the attributed in User class using Spring form
15. Created the  controller methods to save the registration data by taking it from spring form and sending it as user 
object parameter to  CRUD method of DaoImpl.
16. Created the supplier and category classes in com.model.
17. We added the supplier & category annotated classes in hiberConfig.java
18. Created the supplier and category tables in H2.
19. Created Supplier and Category Dao, DaoImpl.
20. Included Supplier and Category  DaoImpl @Autowired bean in  hiberConfig.java
21. Created adding.jsp (SPA) with supplier and category tab and forms.
23. Created controller methods for Supplier and Category CRUD.
24. Performed CRUD operations for Supplier and Category.
	insert()
	retrieve<ArrayList>()
	getByID()
	
25. Created Product.java(MultipartFile-->Transient), ProductDao.java, ProductDaoImpl.java
	insert()
	retrieve<ArrayList>()
	getByID()
26. Add product form in the 3rd tab of SPA along with multipart file upload option.
27. Create the controller methods for calling all the crud operations.

28. Create the login.jsp
29. Create the login option in header.jsp on top navbar
30. Write the controller method to go to the login.jsp(String	+@RequestMapping)

