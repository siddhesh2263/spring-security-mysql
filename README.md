## A Spring security application with MySQL database.

While accessing databases, the programmer needs to take care of the column names.


### One case where a field value was null, resulted into this:

![Alt text](assests/P981313.JPG?raw=true "Null value error")

### There were also some issues while configuring the MySQL database.
A text file is attached which talks more about the problem (MySQL commands.txt).


In the MySQL Workbench, there was some issue regarding performing UPDATE and DELETE operations.

Here's the solution:

### MySQL error code: 1175 during UPDATE in MySQL Workbench
(https://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench)

No need to set SQL_SAFE_UPDATES to 0, I would really discourage it to do it that way. SAFE_UPDATES is by default on for a REASON. You can drive a car without safety belts and other things if you know what I mean ;) Just add in the WHERE clause a KEY-value that matches everything like a primary-key comparing to 0, so instead of writing:

> DELETE FROM user WHERE (user_name = 'user' AND id <> 0);


## Hosted this Spring app on Pivotal Cloud Foundry

Link:

```
https://ss-mysql-cf.cfapps.io/login
```

### Resources:
https://www.navisite.com/blog/dbaas/quick-start-guide-cleardb-for-managed-mysql-on-bluemix/
https://www.javainuse.com/pcf/pcf-sql
