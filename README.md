# handy_sql_for_plex

**Handy little SQL snippets for working with the Plex library.**

This was born out of a desire to get some simple bits of data out of the Plex library database, and so the end result of the SQL scripts are specific for my use-cases. If however there's traction to this then I'll add some more generic scripts as and when I get round to it.

## Pre-requisites

1. Plex running on a Linux-based server
1. sqlite
1. A working knowledge of moving around files on a Linux server either directly or over SSH.

## Running these scripts

### Locate the Plex database

```
cd /var/lib/plexmediaserver/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases
```

### Run sqlite against the library database

```
sqlite3 com.plexapp.plugins.library.db
```
**OPTIONAL: Put headers on the query output**
```sql
.headers on
```

### Set the mode

We use `list` mode so we can avoid having `"` characters everywhere.

```sql
.mode list
```

**OPTIONAL: Set the output of the query to a text file.**

```sql
.output /home/[USER]]/mylist.txt
```
## Run the query

You can copy and paste the query into sqlite or read and execute a local file:
```sql
.read [script].sql
```

Or just copy/paste directly.

## Scripts available

Script|Description
-|-
`unwatched-movies`|Gets a list of movies that haven't been watched yet, titles formatted with the year of release e.g. `Big Buck Bunny (2008)`