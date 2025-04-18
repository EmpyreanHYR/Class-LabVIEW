LabSQL release 1.1a
(c) 2002 Jeffrey Travis (Jeffrey Travis Studios)

Version 1.1a - Nov 17 2002 - some VIs in version 1.1 were indavertently saved under LabVIEW 6.1. In order to preserve compatibility with LabVIEW 6.0, all LabSQL VIs are now 6.0-compatible.

Version 1.1 - Sep. 2002-  fixes a rare bug where text with special characters like tabs (\t) that were part of a database record could produce buggy behavior.



0. INTRODUCTION
----------------

LabSQL is the beginning of an open source project to provide free, multi-database, multi-platform database connectivity support for LabVIEW.  In this first release, we have used the Microsoft ADO object to provide connectivity in LabVIEW for Windows for any ODBC-compliant database, including Access, SQL Server, Oracle, Pervasive, Sybase, etc. Future versions may include JDBC suport for DB connectivity on other LabVIEW platforms, but there are no immediate plans to add this.

Using LabSQL assumes you have at least a basic knowledge of SQL commands and database terminology such as tables, rows, fields, DSN.  It also will help for you to familiarize yourself well with the ADO methods and properties. You can peruse the ADO help file included with this release, or visit http://www.microsoft.com/ado

A trivial sample Access database and 3 examples are included with this LabSQL utility.
 

1. INSTALLATION
---------------

1a. System Requirements:
-----------------------
Because this version of LabSQL relies on an ActiveX component (ADO), it will only run on LabVIEW for Windows (version 6.0 or higher). Although the database you connect to can be theoretically on any platform and on a remote machine, it must have an ODBC driver for Windows installed on your local machine.

In addition to LabVIEW, you  need to have the latest version of the MDAC (Microsoft Data Access Components) ActiveX components, which includes ADO, installed on your machine. You may already have it installed, but if you don't, you can download it at http://microsoft.com/data

1b. Setup
----------------
1. To install LabSQL, simply place the "LabSQL ADO VIs" in any convenient directory. For ease of use, we suggest you create a custom palette under the "User Libraries" LabVIEW palette that links to this directory, so you will have easy access to the ADO VIs. See the LabVIEW documentation if you need to know how to create a custom palette.

2. As with any database application on Windows, you'll need to create a DSN (Data Source Name) in the ODBC control panel. This DSN is used in your LabVIEW application to connect to the appropriate database. If you want to set up the example database, do the following:
	a.Go to your Windows Control Panels, and open "ODBC Data Sources"
	b.Click on the "System DSN" tab
	c.Click on the "Add..." button.
	d. From the list of drivers, choose "Microsoft Access Driver"
	e.At the dialog box, type in "myDB" for the Data Source Name. Then click on "Select..." button, and find the file "Sample Database.mdb" included with the LabSQL examples. Leave everything else as it is, and hit OK.
	f. Close the ODBC control panel
	g. Test the connection by running one of the examples provided.
	


2. Using LabSQL
-----------------
Using LabSQL is mainly a matter of understanding how SQL statements work and how the ADO object work: the Command object, the Connection object, and the Recordset object. You can use the top-level "easy" VI called "SQL Execute.vi" to directly execute a SQL statement. The three simple examples provided show you how to retrieve data, insert a row, and use recordsets to move through one row of data at a time.



4. TECHNICAL SUPPORT
--------------------

No formal technical support is offered on LabSQL. It's free for you to use at your own peril. While I can't promise I will have time to look into any issues, you may contact me with bugs or comments at:

 Jeffrey Travis <labsql@jeffreytravis.com>
 
Also, if you enhance or add onto LabSQL, please let me know so I we can keep the LabVIEW community informed with up-to-date versions!

 Enjoy!
