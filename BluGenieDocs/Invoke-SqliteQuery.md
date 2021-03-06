# Invoke-SqliteQuery

## SYNOPSIS
Runs a SQL script against a SQLite database.

## SYNTAX
```
Invoke-SqliteQuery [-DataSource] <String[]> [-Query] <String> [[-QueryTimeout] <Int32>] [[-As] <String>] [[-SqlParameters] <IDictionary>] [[-AppendDataSource]] [[-AssemblyPath] <String>] [<CommonParameters>]

Invoke-SqliteQuery [-DataSource] <String[]> [-InputFile] <String> [[-QueryTimeout] <Int32>] [[-As] <String>] [[-SqlParameters] <IDictionary>] [[-AppendDataSource]] [[-AssemblyPath] <String>] [<CommonParameters>]

Invoke-SqliteQuery [-Query] <String> [[-QueryTimeout] <Int32>] [[-As] <String>] [[-SqlParameters] <IDictionary>] [[-AppendDataSource]] [[-AssemblyPath] <String>] [-SQLiteConnection] <SQLiteConnection> [<CommonParameters>]

Invoke-SqliteQuery [-InputFile] <String> [[-QueryTimeout] <Int32>] [[-As] <String>] [[-SqlParameters] <IDictionary>] [[-AppendDataSource]] [[-AssemblyPath] <String>] [-SQLiteConnection] <SQLiteConnection> [<CommonParameters>]
```

## DESCRIPTION
Runs a SQL script against a SQLite database.

Paramaterized queries are supported. 

Help details below borrowed from Invoke-Sqlcmd, may be inaccurate here.

## EXAMPLES

### EXAMPLE 1
 ``` 
 #
 ``` 
 ```yam 
 # First, we create a database and a table
    $Query = "CREATE TABLE NAMES (fullname VARCHAR(20) PRIMARY KEY, surname TEXT, givenname TEXT, BirthDate DATETIME)"
    $Database = "C:\Names.SQLite"

    Invoke-SqliteQuery -Query $Query -DataSource $Database

# We have a database, and a table, let's view the table info
    Invoke-SqliteQuery -DataSource $Database -Query "PRAGMA table_info(NAMES)"
        
        cid name      type         notnull dflt_value pk
        --- ----      ----         ------- ---------- --
          0 fullname  VARCHAR(20)        0             1
          1 surname   TEXT               0             0
          2 givenname TEXT               0             0
          3 BirthDate DATETIME           0             0

# Insert some data, use parameters for the fullname and birthdate
    $query = "INSERT INTO NAMES (fullname, surname, givenname, birthdate) VALUES (@full, 'Cookie', 'Monster', @BD)"
    Invoke-SqliteQuery -DataSource $Database -Query $query -SqlParameters @{
        full = "Cookie Monster"
        BD   = (get-date).addyears(-3)
    }

# Check to see if we inserted the data:
    Invoke-SqliteQuery -DataSource $Database -Query "SELECT * FROM NAMES"
        
        fullname       surname givenname BirthDate            
        --------       ------- --------- ---------            
        Cookie Monster Cookie  Monster   3/14/2012 12:27:13 PM

# Insert another entry with too many characters in the fullname.
# Illustrate that SQLite data types may be misleading:
    Invoke-SqliteQuery -DataSource $Database -Query $query -SqlParameters @{
        full = "Cookie Monster$('!' * 20)"
        BD   = (get-date).addyears(-3)
    }

    Invoke-SqliteQuery -DataSource $Database -Query "SELECT * FROM NAMES"

        fullname              surname givenname BirthDate            
        --------              ------- --------- ---------            
        Cookie Monster        Cookie  Monster   3/14/2012 12:27:13 PM
        Cookie Monster![...]! Cookie  Monster   3/14/2012 12:29:32 PM
 ``` 
 
### EXAMPLE 2
 ``` 
 Invoke-SqliteQuery -DataSource C:\NAMES.SQLite -Query "SELECT * FROM NAMES" -AppendDataSource
 ``` 
 ```yam 
 fullname       surname givenname BirthDate             Database       
    --------       ------- --------- ---------             --------       
    Cookie Monster Cookie  Monster   3/14/2012 12:55:55 PM C:\Names.SQLite

# Append Database column (path) to each result
 ``` 
 
### EXAMPLE 3
 ``` 
 Invoke-SqliteQuery -DataSource C:\Names.SQLite -InputFile C:\Query.sql
 ``` 
 ```yam 
 # Invoke SQL from an input file
 ``` 
 
### EXAMPLE 4
 ``` 
 $Connection = New-SQLiteConnection -DataSource :MEMORY:
 ``` 
 ```yam 
 Invoke-SqliteQuery -SQLiteConnection $Connection -Query "CREATE TABLE OrdersToNames (OrderID INT PRIMARY KEY, fullname TEXT);"
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "INSERT INTO OrdersToNames (OrderID, fullname) VALUES (1,'Cookie Monster');"
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "PRAGMA STATS"

# Execute a query against an existing SQLiteConnection
    # Create a connection to a SQLite data source in memory
    # Create a table in the memory based datasource, verify it exists with PRAGMA STATS
 ``` 
 
### EXAMPLE 5
 ``` 
 $Connection = New-SQLiteConnection -DataSource :MEMORY:
 ``` 
 ```yam 
 Invoke-SqliteQuery -SQLiteConnection $Connection -Query "CREATE TABLE OrdersToNames (OrderID INT PRIMARY KEY, fullname TEXT);"
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "INSERT INTO OrdersToNames (OrderID, fullname) VALUES (1,'Cookie Monster');"
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "INSERT INTO OrdersToNames (OrderID) VALUES (2);"

# We now have two entries, only one has a fullname.  Despite this, the following command returns both; very un-PowerShell!
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "SELECT * FROM OrdersToNames" -As DataRow | Where{$_.fullname}

    OrderID fullname      
    ------- --------      
          1 Cookie Monster
          2               

# Using the default -As PSObject, we can get PowerShell-esque behavior:
Invoke-SqliteQuery -SQLiteConnection $Connection -Query "SELECT * FROM OrdersToNames" | Where{$_.fullname}

    OrderID fullname                                                                         
    ------- --------                                                                         
          1 Cookie Monster
 ``` 


## PARAMETERS

### DataSource
 ```yam 
 -DataSource <String[]>
    Path to one or more SQLite data sources to query
    
    Required?                    true
    Position?                    1
    Default value                
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### Query
 ```yam 
 -Query <String>
    Specifies a query to be run.
    
    Required?                    true
    Position?                    2
    Default value                
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### InputFile
 ```yam 
 -InputFile <String>
    Specifies a file to be used as the query input to Invoke-SqliteQuery. Specify the full path to the file.
    
    Required?                    true
    Position?                    2
    Default value                
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### QueryTimeout
 ```yam 
 -QueryTimeout <Int32>
    Specifies the number of seconds before the queries time out.
    
    Required?                    false
    Position?                    3
    Default value                600
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### As
 ```yam 
 -As <String>
    Specifies output type - DataSet, DataTable, array of DataRow, PSObject or Single Value 
    
    PSObject output introduces overhead but adds flexibility for working with results: http://powershell.org/wp/forums/topic/dealing-with-dbnull/
    
    Required?                    false
    Position?                    4
    Default value                PSObject
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### SqlParameters
 ```yam 
 -SqlParameters <IDictionary>
    Hashtable of parameters for parameterized SQL queries.  http://blog.codinghorror.com/give-me-parameterized-sql-or-give-me-death/
    
    Limited support for conversions to SQLite friendly formats is supported.
        For example, if you pass in a .NET DateTime, we convert it to a string that SQLite will recognize as a datetime
    
    Example:
        -Query "SELECT ServerName FROM tblServerInfo WHERE ServerName LIKE @ServerName"
        -SqlParameters @{"ServerName = "c-is-hyperv-1"}
    
    Required?                    false
    Position?                    5
    Default value                
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ``` 
### AppendDataSource
 ```yam 
 -AppendDataSource [<SwitchParameter>]
    If specified, append the SQLite data source path to PSObject or DataRow output
    
    Required?                    false
    Position?                    6
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### AssemblyPath
 ```yam 
 -AssemblyPath <String>
    
    Required?                    false
    Position?                    7
    Default value                $SQLiteAssembly
    Accept pipeline input?       false
    Accept wildcard characters?  false
 ``` 
### SQLiteConnection
 ```yam 
 -SQLiteConnection <SQLiteConnection>
    An existing SQLiteConnection to use.  We do not close this connection upon completed query.
    
    Required?                    true
    Position?                    8
    Default value                
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false
 ```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).


