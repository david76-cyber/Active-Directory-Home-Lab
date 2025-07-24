# Active-Directory-Home-Lab


 ### [YouTube Demonstration](https://youtu.be/7eJexJVCqJo)

<h2>Description</h2>
This project simulates a real-world Active Directory Domain Services (AD DS) environment using **Windows Server 2022** and **Windows 10 Pro** in **VirtualBox**. It includes a PowerShell automation script to manage users, explore Group Policy, and practice domain-based administration in a safe lab setup.
<br />


<h2>Lab Description</h2>
This home lab is designed to:

- <b>Build a Windows Server 2022 domain controller</b> 
- <b>Join a Windows 10 Pro client to the domain</b>
- <b>Create and delete users with PowerShell scripts</b>
- <b>Practice domain policies, user authentication, and Group Policy Objects (GPO)</b>
- <b>Understand basic AD DS roles and configurations</b>


<h2>Tech Stack</h2>

- <b>**PowerShell** – For automation and scripting (user management, domain setup)</b>
- <b>**Windows Server 2022** – Domain Controller</b>
- <b>**Windows 10 Pro** – Domain-joined client</b>
- <b>**VirtualBox** – Virtualization platform</b>

<h2>Environment Setup</h2>

- <b>Virtual Machines: Created in VirtualBox</b>
- <b>Network: Internal/Host-only adapter for isolated communication</b>
- <b>Domain: `david.com`</b>
- <b>DNS and AD DS installed on Windows Server 2022</b>

<h2>Group Policy Configuration Samples</h2>

- <b>Enforce Password Policy: Strong domain password rules</b>
- <b>Disable USB Storage: Prevent use of removable media</b>
- <b>Force Wallpaper: Enforce a company-wide desktop background</b>

<h2>Screenshots</h2>

<p align="center">
 Active Directory Diagram: <br/>
 <img src="https://i.imgur.com/9xb6W00.png" height="80%" width="80%" alt="Diagram"/>
 <br />
 <br />
 VirtualBox Layout:  <br/>
<img src="https://i.imgur.com/kU1XprL.png" height="80%" width="80%" alt="DC & Client"/>
 <br />
 <br />
AD DS, DHCP, DNS Installed: <br/>
<img src="https://i.imgur.com/IpzDVUf.png" height="80%" width="80%" alt="Active Directory Domain Services (AD DS)"/>
<br />
<br />
 New Forest Configuration:  <br/>
<img src="https://i.imgur.com/cDIRMGL.png" height="80%" width="80%"  alt="Domain name: mydomain.com"/>
<br />
<br />

<h2>PowerShell Automation</h2>

Create_User Script: <br/>
<img src="https://i.imgur.com/GpF8b8t.png" height="80%" width="80%" alt="PowerShell script"/>
<br />
<br />
Delete_user:  <br/>
<img src="https://i.imgur.com/WkPRIgw.png" height="80%" width="80%" alt="PowerShell script"/>
<br />
<br />

<h2>Group Policy Configuration Samples</h2>
Enforce Password Policy: Strong domain password rules:  <br/>
<img src="https://i.imgur.com/YMNGUY6.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Disable USB Storage: Prevent use of removable media:  <br/>
<img src="https://i.imgur.com/SXzeZfS.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Force Wallpaper: Enforce a company-wide desktop background:  <br/>
<img src="https://i.imgur.com/4TesfRu.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
