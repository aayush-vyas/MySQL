# MySQL practice

### create table
```
create table user_result(
id int auto_increment primary key,
user_id int,
mark int,
feedback varchar(50),
FOREIGN KEY (user_id) REFERENCES user(user_id)
);

```


### Insert table

```
insert into user_result values(1,1, 40, 'feedback');
insert into user_result values(2,1, 50, 'feedbackq');
insert into user_result values(3,1, 70, 'feedback');
insert into user_result values(4,2, 30, 'feedbackds');
insert into user_result values(5,2, 90, 'feedback');

```
![image](https://user-images.githubusercontent.com/122258263/219554516-ae79572a-0d36-47aa-8cd7-fd15c4c95bc3.png)

![image](https://user-images.githubusercontent.com/122258263/219554576-b1b3fb74-66b0-4c03-b597-0052bda9d6d8.png)


### Return the rows from user and user_result table where perticular user has highest marks for that exam.

``
select user.name,user_result.user_id,user_result.mark,user_result.feedback from user natural join user_result where user_result.mark in (select max(mark) from user_result group by user_id);
``

### Display the last_name of user from user_detail table where user's last name starts and end with vowel character.
```
select last_name from user_details where last_name regexp '^[aeiouAEIOU].*[aeiouAEIOU]$';
```

### Display the last_name from user_details in ordrer of last three character of last_name. 

```
select distinct last_name from new_test.user_details order by substr(last_name,-3);
```


### Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.


```
select sum(population) from city where countrycode like 'JPN' group by countrycode; 
```

### Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.
```
select round(lat_n,4) from station where lat_n = (select min(lat_n) from station where lat_n > 38.7780); 
```
