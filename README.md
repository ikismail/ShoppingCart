# ShoppingCart [![HitCount](http://hits.dwyl.io/ikismail/ShoppingCart.svg)](http://hits.dwyl.io/ikismail/ShoppingCart)

Developed an end to end **Ecommerce web Application using Spring MVC** with multiple
modules

### Functionalities:

1. User Registeration

2. **CRUD Operations** like

* User can add product to his cart
* Admin can add product to the product list
* Admin can edit the product details
* Admin can delete the product from the list

3. **Spring Security**

* User can login the site
* The entire site will change according the role. Whether the client is User or Admin
* user can logout after completing.

4. **Spring WebFlow**

* after adding products the cart the User can checkout using spring WebFlow
* Confirming User Details
* Confirming Shipping and Billing Address
* Receipt
* If the user cancel the webflow it will go to cancel Page
* If the user submits the checkout it will go to thank you page with the timing of delivery Report

### Tools and Technologies:

* **Technology** : Bootstrap, Java, Spring MVC, Hibernate, JSP, Maven.
* **Application Servicer**: Apache Tomcat Server
* **Database** : H2 Database.

### Installation:

1. Development Platform - Eclipse / IntelliJ Idea
   * [Download Eclipse](https://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/mars2)
   * [Download IntelliJ Idea](https://www.jetbrains.com/idea/download/#section=windows)
2. Server - Apache Tomcat Server

   * [Download Apache Server](https://tomcat.apache.org/download-70.cgi)

3. Build Tool - Maven

   * [Download Maven](https://maven.apache.org/download.cgi)

4. Database - H2 Database

   * [Download H2 Database](http://www.h2database.com/html/download.html)

5. Configuring tomcat with Eclipse (windows) - [Click Here](https://javatutorial.net/run-tomcat-from-eclipse)

6. Installation of maven in eclipse - [Click Here](https://stackoverflow.com/questions/8620127/maven-in-eclipse-step-by-step-installation)

7. Clone the repository and import it to eclipse

8. Run your H2 Database.

9. Configure your databse configuration in **application-context.xml**

   * Database properties:


        <!-- database properties DataSource -->

            <bean id="dataSource"
              class="org.springframework.jdbc.datasource.DriverManagerDataSource">
              <property name="driverClassName" value=YOUR DB DRIVER CLASS NAME" />
              <property name="url" value="YOUR DB URL" />
              <property name="username" value="YOUR DB USERNAME" />
              <property name="password" value="YOUR DB PASSWORD" />
            </bean>

      * Database Dialect:

            <prop key="hibernate.dialect">YOUR DB DIALECT</prop>

10. Run the server.

### ScreenShots:

* Home Page:

![Alt text](https://github.com/ikismail/ShoppingCart/blob/master/src/main/webapp/WEB-INF/resource/images/screenshots/Home.jpg "Home Page")

* Contact Us:

![Alt text](https://github.com/ikismail/ShoppingCart/blob/master/src/main/webapp/WEB-INF/resource/images/screenshots/ContactUs.png)

#### Somethings wrong!!

If you find that something's wrong with this package, you can let me know by raising an issue on the GitHub issue tracker

#### Contribution

Contributors are most welcome.
