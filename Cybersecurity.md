# Cybersecurity

certlm.msc -> View Certificates

#### Network Sniffing and Spoofing tools :

- Hexinject 
- Wireshark 
- Burp Suite 
- Bettercap 

#### Top 10 ethical hacking tools till 2021 :

- Acunetix 
- Nmap -  Network Mapper 
- Metasploit 
- Wireshark 
- Nikto 
- John the Ripper 
- Kismet 
- SQLninja 
- Wapiti 
- Canvas


**Summary :**
    ABC technologiesis a start-up that develops web applications. 
    Recently ABC technologies observed that they are being a victim to various cyber attacks. 
    ABC technology is now worried about the security of their enterprise.

**Situation :**
    To take care of that, they hire you to check for security loopholes in the enterprise architecture and suggest solutions. 

**The enterprise architecture of ABC technologies is as follows :** 

    1. All the data is stored in a single database named DB1 that resides on the Admin System hosted in AWS Cloud. 
    2. This database is accessed by various application servers which is also hosted in the cloud. 
    3. The application server accessed DB1 via API calls which included username and password for authentication. 
    4. Admin team can access the database DB1directly, by logging into the Admin System using a username and password. 
    5. Because the password for DB1 was changed regularly, a copy of this password was stored in the Admin Systemas plain text. 
    6. The Admin System and the application servers have security rules set such that only the IP address from the ABC technologies’ office can access it. 
    7. Because ABC technologies allows working remotely, it allows employees to access the Admin System using a VPN. 
    8. Every employee is given the VPN access when they are hired without strict policies. 

**For the above scenario, answer the following :** 

    1. Which component(s) in the above architecture are most vulnerable to a cyberattack? 
       DB1, Admin System, VPN access

    2.What possible attacks can occur on the enterprise? 
       DoS, Data theft, data loss

    3.How would improve the security of the enterprise? 
       Split the data into multiple DBs, which will have different dbnames, usernames and passwords. 
       Not to keep the credentials in the admin system in plain text. 
       If to share, then put the encrypted password. 
       Better to use the Token based, for various applications, which allows them to manage easily granting, revoking.

    4.What are possible ways for an attacker to access/compromise the database DB1? 
       By getting the access to compromised VPN. 
       Plain text password is shared commonly and available to all irrespective of their roles and responsibility.

