# AirBnB-like-database-in-MySQL

This database is a foundation for an online booking platform that connects the host and guest; it
manages accommodations, reservations, payments, and user interactions. It gets the work done
because it creates all necessary provisions for information exchange between guests, hosts, and
administrators to be kept in the management circle regarding accommodation availability and
reservations for an efficient booking process. Key support areas include user authentication,
reservation property to be listed, availability to be tracked, payments, reviews, and messages.
The core objective concerning the database is to allow users to search for accommodations,
book, leave reviews, and manage profiles. From the side of the host, they can list properties,
manage properties, adjust pricing and availability, and begin to react to guest requests; and the
administrators would engage in conflict resolution, approval of accommodations, and
monitoring transactions.
Core Features
1. User Management: This includes user authentication and account management.
2. Booking Management: Features will be offered wherein guests can book accommodations
based on availability, change reservations or cancel reservations. Search can be done based on
location, amenities, and price filters. Recommendations will also be made for the default search
results.
3. Property Management: Hosts can add, change or delete properties, set pricing and manage
property availability.
4. Location Management: User support for multi properties with advanced filter geo search
options.
5. Messaging System: Messaging system between guest and host (direct messages)
6. Rating System: Guests and hosts can leave feedback using a rating scale from one to ten.
7. Payment Processing: secure transaction storage support multiple payment methods, and
track payment history.
8. Administrative Features: Administration would engage in conflict management, approving
accommodation, monitoring transactions, and maintaining system logs.2
9. Multiple Languages and Currencies Support
The steps followed during the process of design are as follows:
• Requirements Analysis
Identifying the primary entities, cardinalities and determining the for example how the pricing is
calculated and what are the booking restrictions.
• Conceptual Design (ER Diagram)
Entities and attributes and establishing relationships:
Property (id, name, location_id, price_per_night, host_id, …)
Booking (id, user_id, property_id, start_date, end_date, total_price, …)
Availability (id, property_id, date, is_available, …)
Payment (id, booking_id, amount, status, method, …)
• Logical Design (Relational Model)
Converting the ER diagram to relational tables.
Normalizing the database for redundancy elimination.
• Physical Design (Schema Definition)
Select MySQL as the DBMS and defining the indexes, foreign keys, and constraints.
• Implementation (Database Creation & Data Population)
Writing the SQL scripts for table creations and putting in sample data to test.
Conclusion
The goal in creation of this database was to create a basic skeleton that can be both scalable
and efficient backend for an online booking platform. I have implemented an user management,
property management, payments, robust administrative tools and logs system in which admin’s
actions can be tracked among others. This database can be easily upgraded if there is a such
need.



This database design is aimed at creating a schema for a property rental platform that will connect
guests and hosts while also supporting bookings, messaging, payments, and related support
functionalities. The main problem is creating such a scalable, normalized structure that maintains
integrity among the data for very different kinds of user interactions. Key steps in the first phase
where: requirements analysis and the design of an ERM.
It uses a relational database with the following key tables: USER management, PROPERTY listings,
BOOKINGS, and PAYMENTS. Inheritance is used to manage user roles through the use of two tables:
HOST and GUEST. Geospatial capabilities normalize locations in the LOCATION table; dynamic datespecific 
pricing and availability are maintained by AVAILABILITY.
Other features include MESSAGING, REVIEWS, VOUCHERS, and SUPPORT_TICKETS. Redundancy is
minimized by normalization, with many-to-many relationships taken care of by junction tables
like PROPERTY_AMENITIES and SAVED_PROPERTIES.
This document is made of two parts, the requirements specifications whose goal is to identify the
purpose of database, understand the roles and their actions and identify what data and functions
are required. Second part, the Entity-Relationship Model is made of visual representation of
entities and their cardinalities (by using the Chen notation) and data dictionary with explanations.
Requirements specification
1. What is the purpose of this database?
The purpose of this database is to be a backbone of an online booking platform. It connects the
hosts and their guests based on their preferences and his/hers search requirements (location,
amenities, etc.). The host is allowed to list his property with description, pricing and availability
status. Guests will be able to rate a host and vice versa via the rating system (1-10).
Database will also provide a login and payments system.
2. What roles (person/user groups) are there and what action do they perform?
Guest
Have an ability to search for accommodations, makes, modifies, or cancels bookings. He needs to
be able to write and manage reviews for completed stays. Manages his own personal profiles and
preferences (might be implemented in the future)Host
Have an ability to list and manage accommodations, update availability and pricing, view and
respond to reviews, ability to respond to messages from guest.
Admin
Admins will manage conflicts, respond to tickets, approve properties and solve any problems with
booking system, payments and other.
3. Which data and functions are required?
First part of the system is user management – registration where users will create their accounts
and login. Passwords storage will be done in separate table and hashed before storing. User can
be referred by other user to start using this booking management system, which could bring the
referring user a discount.
Booking Management will include an ability to choose accommodations, select dates (dates will
be listed only if they are available) and book for those selected dates. Guests need to have an
ability to search for accommodations by using keywords, location, price range, date, amenities,
house rules and rating. They will also be able to modify and cancel bookings based on cancelation
policy. Hosts will create and manage their listings, view and manage reservations, set different
prices for different dates.
Location management will add support for multiple apartments on same location and ability to
search by selecting area on the map(geolocation).
Messaging system – an ability to send and receive messages for guests and hosts.
Rating system where both guests and hosts will be able to leave their review and give rating (1-
10 stars). Total rating will then be calculated and implemented by application logic. That way
guests can safely book their accommodations.
Payments. Guests will be able to pay with various payment methods. Those transactions will be
stored in one table and users saved payments methods in another table. Customers will be able
to see their payment history on their accounts page. Hosts will be able to calculate their total
earnings.
Administrative functions – admins will manage conflicts, respond to tickets. Their actions will be
tracked in logs.
Users will be able to choose different languages and currencies in the settings.

HOW TO INSTALL - CHECK THE Installation_Manual.pdf
