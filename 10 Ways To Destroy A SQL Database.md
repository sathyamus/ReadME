## 10 Ways To Destroy A SQL Database


http://hungred.com/useful-information/best-way-log-details-database-or-file-log/

http://hungred.com/useful-information/ways-destroy-sql-database/

Database is the asset of most online or internet based company. Everyone looks at how to improve and secure their databases to protect or improve their company. While everyone is searching for remedies or enhancement pills for their company, there are often simple mistakes made by some companies (especially the small to middle ones) that might just destroy their businesses. Rather than looking at how we can protect our database, this article will look at ways to destroy it instead! (through mistake, of course)

#### Don’t Monitor Error Log

The first line of defense that any database would have. Error log may indicates first time problem occurs or warnings that your database might be facing problem. These troubles can be easily avoided or missed depending on what you do. Be my guest and ignore error log will definitely help to destroy your database.

Many company databases are designed in a way to enforce availability. Hence, there will surely be primary and slaves databases in such company. These databases also contain error files. However, if you would like your secondary databases or slave databases go out of sync with the primary database, be sure to ignore the error file and give it some time. Depending on the size of your company, the amount of data lost caused by the lost of synchronization might just cost you dearly when some hero DBA shutdown the primary database without issuing “stop slave” first on the slave database or wait till some errant SQL come down the line. Although this might take some times to destroy your database but its worth to think about using it.

#### Don’t Fine Tune Queries

You have a big server, lots of memory and fast disk, so don’t have to worry. Continue with this attitude and you are on your way to success (destroy it!). Developers writing bad code that caused full table scan and trying their best to trash your query cache, overloading your Innodb buffer cache with useless blocks. Plus hitting disk instead of main memory as much as possible? Well, there won’t be ANY problem since every piece of hardware is the latest, fastest and most powerful ones! Let’s just wait and see till your database fall on its knees! Especially when data is getting larger! That’s the best time we see this happen!
Don’t Document Procedures and Configurations

Ah! No documentation won’t cause a single problem! No problem at all my friend! Why the need to enforce such tedious job when ‘we’ can maintain the job? Just you wait when the ‘we’ becomes ‘i’ and ‘i’ becomes ‘who’. Employees come and go nowadays. People always look for a better future in life and no matter what happens to you, it’s really none of their concern. Man! What so difficult? Let’s just hire an expert to take the job. Oh boy! That’s a great solution! Let’s see when he presses the wrong button :)

#### Don’t Backup

Another great way to destroy your database is to avoid making backups! Hardware failure is a common thing in data center. Hard disk fail, power supply down, plugs get pulled, basically anything you can imagine. Don’t backup regularly can just do the thing!

Its not only hardware that might assist you in your task. Developers or DBA who accidentally deletes data can also be of help. Deleting columns, table, rows, data or even database! These sort of things do happen and it happens quite frequently. Other than deleting data, mistakes made on program might just transfer the wrong data to the wrong place. All of these are just things that might happen to any IT firms. Well, there is always never happen before situation for some of you. Just follow your instinct (backup suck!) on this and you will do just fine.

#### Don’t Use Memory Wisely

Server nowadays have huge memory installed with it. Technology advancement has made everything more powerful than before. Furthermore, it is that affordable that many companies can afford big and fast memory! With such powerful memory backup, we can assure that whatever developers throw in, the server and database will surely be able to take it! We can safely assume MySQL knows our database memory requirement! We just have to run the wizard installation and viola! Everything is automatic nowadays! There won’t be such thing as misallocation of memory. The system is perfect.

Good to know. You have everything that required (even attitude) in preparing to bomb up your database.

#### Don’t Worry About Indexes

Indexes is the most effective way to destroy your database. However, you must know the trick to do this. There are two ways to succeed. The first one required you to do absolutely nothing. No indexing is required purely full scan table. However, this required certain criteria to be meet but it should do the trick. If this doesn’t suit your taste, you can try a faster way by creating useless or unwanted indexes and ensure that your table have tons of records. This can surely improve the process of destroying your database.

#### Don’t Normalize Your Database Design

If you are just starting to build a system, you can consider skipping normalization in your database design. Skipping normalization can help contribute to bad database design which is part of the plan to destroy a database. Furthermore, without normalization, there is a good chance your system can be inaccurate, slow, and inefficient, and it might not even produce the data you expect.

#### Don’t Make Policies For Database Patch

Its true that majority company doesn’t update their databases immediately after a new security vulnerability patch has been released. It would be irresponsible for a company to deploy a patch in production without first running it through quality assurance. Furthermore, some companies didn’t event bother to have policies to update their database. If you think that databases are a little more isolated than the desktop, there’s less of a security concern and thinks that your databases are more secure because they’re behind firewalls and and have a good perimeter security, you are on the right track of destroying a database.

#### Don’t Bother Caching

My database can take tons of crap anything throw towards it. Its the fastest computer (why bother to have technology advancement when we already have the fastest? Dot) on the planet. Cache or no cache won’t destroy my database. Its the fastest (ya ya, i get it.). The dramatics performance gain using cache table might not interest you. Scalability, flexibility, availability and performance are just some benefits that caching can gives. Multitier architecture, what bullshit. Your server will NEVER go down and you will NEVER required cache table to be available. Millions of hits on the server database might just do the trick on helping you achieve what you want in this article. It will definitely work better when your table has few millions record and a few lousy queries. (it might not even required millions of hit to kill it)

#### Don’t Use Fast or Reliable Disk

Using something like a single disk or mirror will definitely makes your I/O the main bottleneck on your system. With the help of a single disk, you can expect OS and your database fighting for resources, serving one user at a time while others waiting for their turn. To make things worst, you can try utilize RAID-5 instead of RAID-10. May be you already are!  Well, to  compare between these two, RAID-5 only performed reasonably well on read while RAID-10 exceed almost two times better than RAID-5 on writes. RAID-5 only can handle 1 fails and any drive die will approximately caused 64% degration in read performance until the faulty drive is discovered. Furthermore during recovery, read performance for a RAID5 array is degraded by as much as 80% compared to RAID-5 which only degrade performance on the faulty disk itself. There are more ‘advantages‘ on RAID-5 but i will just stop here. RAID-5 seems to be good with destroying than RAID-10 don’t you think so?

#### Conclusion

The points discuss here might just happen to large data or traffic internet site (well, your site will eventually grow to have big data, hopefully). However, the conclusion to all these jokes are more valuable;.

