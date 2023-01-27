# DuckDB SQL Tools

[![Version](https://img.shields.io/visual-studio-marketplace/v/RandomFractalsInc.duckdb-sql-tools.svg?color=orange&style=?style=for-the-badge&logo=visual-studio-code)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)
[![Installs](https://img.shields.io/visual-studio-marketplace/i/RandomFractalsInc.duckdb-sql-tools.svg?color=orange)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)
[![Downloads](https://img.shields.io/visual-studio-marketplace/d/RandomFractalsInc.duckdb-sql-tools.svg?color=orange)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)
<a href='https://ko-fi.com/F1F812DLR' target='_blank' title='support: https://ko-fi.com/dataPixy'>
  <img height='24' style='border:0px;height:20px;' src='https://az743702.vo.msecnd.net/cdn/kofi3.png?v=2' alt='https://ko-fi.com/dataPixy' /></a>

[DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) extension enables using [DuckDB](https://duckdb.org/) in [VSCode](https://code.visualstudio.com/) IDE with the popular [SQLTools](https://vscode-sqltools.mteixeira.dev/en/home/) VSCode extension and SQL query editing and processing tools.

![DuckDB SQL Tools](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools.gif)

# Features

[DuckDB](https://duckdb.org/docs/) is an in-process SQL [OLAP](https://en.wikipedia.org/wiki/Online_analytical_processing) database management system that uses vecotrized data engine for optimized analytics and parallel query processing with extensive SQL support and direct `Parquet` and `CSV` querying capabilites.

[DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) extension adds the following capabilities to VSCode IDE to work with DuckDB instances:

- Connect to a local DuckDB instance
- Create in-memory DuckDB instance
- View DuckDB tables, columns, and views
- Run SQL queries on open DuckDB instances
- Attach SQLite database files to in-memory DuckDB instances
- Query remote `CSV` and `Parquet` data files using [DuckDB HTTPFS](https://duckdb.org/docs/extensions/httpfs.html) extension and create in-memory DuckDB tables from remote data results
- Create named SQL query Bookmarks
- View SQL Query History

See [SQLTools documentation](https://vscode-sqltools.mteixeira.dev/en/home/) for a comprehensive list of SQLTools extension features contributed to VSCode IDE.

# Installation

Install [DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) extension from [VSCode marketplace](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) in your browser by clicking on **Install** button in the extension info page header.

Alternatively, you can install this extension directly in VSCode IDE from Extensions tab (`ctrl+shift+x`) by searching for `DuckDB`.

![DuckDB SQL Tools VSCode Extension Info](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-extension-info.png)

Users of [VSCodium](https://vscodium.com/) and other VSCode-based IDEs can install DuckDB SQL Tools extension using `.vsix` extension package attached to the Assets section in published [releases](https://github.com/RandomFractals/duckdb-sql-tools/releases) of this extension on Github. Follow [install from .vsix](https://code.visualstudio.com/docs/editor/extension-marketplace#_install-from-a-vsix) instructions in your VSCode extensions compatible IDE or online container service to install it.

# DuckDB Extensions

DuckDB egnine also provides a number of [Extensions](https://duckdb.org/docs/extensions/overview) you can install and load to work with remote `CSV` and `Parquet` data files over [HTTPFS](https://duckdb.org/docs/extensions/httpfs), enable [Full Text Search](https://duckdb.org/docs/extensions/full_text_search), attach SQLite database with [SQLite Scanner](https://duckdb.org/docs/extensions/sqlite_scanner), or attach Postgres database instance with [Postgres Scanner](https://duckdb.org/docs/extensions/postgres_scanner).

You can check the list of core and installed DuckDB extensions by running the following SQL query on an open database instance:

```sql
select * from duckdb_extensions();
```

![DuckDB SQL Tools DuckDB Extensions](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-duckdb-extensions.png)

## DuckDB HTTPFS

DuckDB SQL Tools VSCode extension installs and loads [HTTPFS](https://duckdb.org/docs/extensions/httpfs) DuckDB extension by default for all the open DuckDB instances. You can add other [DuckDB Extensions](https://duckdb.org/docs/extensions/overview) to an open database instance by using [`INSTALL` and `LOAD`](https://duckdb.org/docs/extensions/overview#remote-installation) extension SQL statements.

Bellow is an example of loading reported Chicago crimes data into in-memory DuckDB instance from a `.parquet` data file hosted in our [Chicago Crimes](https://github.com/RandomFractals/chicago-crimes) data and analytical tools demo Github repository. This example uses implicitly loaded DuckDB HTTPFS extension to query reported Chicago crimes parquet data file with over 210K recorded crime reports, creates a `CrimeReports` table in DuckDB `:memory:` instance from loaded parquet data results, and queries imported data:

![DuckDB SQL Tools HTTPFS](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-httpfs-data-load.gif)

## DuckDB SQLite Scanner

Use the following SQL statements to add [SQLite Scanner](https://duckdb.org/docs/extensions/sqlite_scanner) extension to in-memory DuckDB instance:

```sql
INSTALL sqlite;
LOAD sqlite;
```

With the loaded SQLite Scanner extension you can attach SQLite database to DuckDB database instance. Attached SQLite database tables will show up as views in DuckDB instance.

Use the following SQL `CALL` function to attach SQLite database instance:

```sql
CALL sqlite_attach('E:\\projects\\data\\tools\\duckdb-tools\\data\\chinook\\sqlite\\chinook.sqlite');
```

![DuckDB SQL Tools SQLite Scanner](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-sqlite-scanner.gif)

## DuckDB File References

**Note**: DuckDB SQL Tools extension uses [DuckDB NodeJS Client API](https://duckdb.org/docs/api/nodejs/overview). In order to work with local data files, you need to specify full path to your local database or data files in SQL statements that reference local file paths.

Future versions of this extension might simplify local file path references by deducing absolute file path form the local DuckDB file connection string or open VSCode project workspace URI and replace relatIve database or data file references with the corresponding absolute path in an open VSCode project Workspace.

Also, note in the `sqlite_attach` SQL call statement above we are escaping `\` file path delimiters on Windows OS by using `\\` characters sequence.

# Demo Data

DuckDB SQL Tools extension github repository contains sample [/data](https://github.com/RandomFractals/sql-duckdb-tools/tree/main/data/chinook/duckdb) folder with `chinook.duckdb` and `chinook.sqlite` database files, csv, json and parquet data files, and some test SQL queries you can try running on this well-known sample database wih our VSCode extension.

![DuckDB SQL Tools Demo Data](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-data.png)

# Limitations

Due to the limited time and minimal development effort invested into building this free trial DuckDB SQL Tools extension, our first Preview alpha version of this extension comes with the following known limitations and supported usage scenarios.

## DuckDB Storage

Preview release of this extension supports only local database instances created using [DuckDB v0.6.1](https://github.com/duckdb/duckdb/releases) engine. Database instances and files created with prior versions of DuckDB are not supported as they use different compression and storage formats and the structure of `.duckdb` file has been changing as DuckDB engine is evolving.

Use [DuckDB CLI](https://duckdb.org/docs/api/cli.html) to export data from the older database file versions and create new `.duckdb` file using the latest DuckDB storage implemenation. Read [Announcing DuckDB 0.6.0](https://duckdb.org/2022/11/14/announcing-duckdb-060.html) blog post for more information about DuckDB storage improvements.

## Read-Only DuckDB

Additionaly, our first release opens `.duckdb` database files in `read-only` mode for the time being to ensure other data processing tools and [DuckDB CLI](https://duckdb.org/docs/api/cli) can open and update the same `.duckdb` file as DuckDB supports only **one** active `write` connection in its latest incarnation.

Future paid Premium and/or Pro versions of this extension might provide write capabilities and better integration with DuckDB CLI in VSCode Terminal to our [Github Pro Sponsors](https://github.com/sponsors/RandomFractals/sponsorships?sponsor=RandomFractals&tier_id=18884), depending on the popularity of this extension in VSCode marketplace, user feedback and requests you can post in our [DuckDB SQL Tools Github Discussions](https://github.com/RandomFractals/duckdb-sql-tools/discussions), and users willing to pay for the development of **Premium DuckDB Tools** and additional **Pro** features.

## In-Memory DuckDB

Meanwhile, you can experiment with writable `:memory:` DuckDB instances in this DuckDB SQL Tools Preview extension version. In-Memory DuckDB instances function similar to [In-Memory SQLite Databases](https://www.sqlite.org/inmemorydb.html). You can use [DuckDB Import Data](https://duckdb.org/docs/data/overview) and [Atach](https://duckdb.org/docs/sql/statements/attach) features available via DuckDB SQL statments, and use [Export Database](https://duckdb.org/docs/sql/statements/export) SQL statements to export created in-memory DuckDB instances.

DuckDB SQL Tools extension lets you create in-memory database instances by specifying `:memory:` in the Database File field of the new DuckDB connection in SQLTools Connection Assistant as demonstrated in DuckDB HTTPFS and SQLite Scanner extension usage examples above.

**Note**: **only** in-memory DuckDB database instances are open in `read/write` mode in this DuckDB SQL Tools extension Preview release to avoid DuckDB instance file access locking.

## VSCode Memory Limit

You can adjust the amount of RAM allocated to VSCode IDE to enable opening large files and load more data into memory. Go to `File -> Preferences -> Settings` and type `files.maxMemoryForLargeFilesMB` in the Setting search field to change it. For example, users with 64GB of RAM can change it to `49152` MB to allow VSCode use 48GB of available memory.

![VSCode Max Memory Setting](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/vscode-max-memory-setting.png)

# Configuration

[SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) extension provides many configuration [Settings](https://vscode-sqltools.mteixeira.dev/en/settings/) users can toggle to change database connection and tree view display options, sql formatting, and results display.

The following [SQLTools Settings](https://vscode-sqltools.mteixeira.dev/en/settings/) were used while creating and testing this DuckDB SQL Tools extension and are recommended for working with DuckDB instances efficiently. We suggest you set these preferences in User Settings in VSCode by navigating to `File -> Preferences -> Settings -> User -> Extensions -> SQLTools`, or adding them to your global VSCode `settings.json` config file using the JSON code snippet below:

```json
{
  ...
  "sqltools.useNodeRuntime": true,
  "sqltools.disableNodeDetectNotifications": true,
  "sqltools.autoOpenSessionFiles": false,
  "sqltools.results.limit": 10000,
  "sqltools.results.location": "current",
}
```

| Setting | Description |
| --- | --- |
| ```"sqltools.useNodeRuntime": true``` | Enable Node runtime in order to use [DuckDB NodeJS API](https://github.com/duckdb/duckdb/tree/master/tools/nodejs) this database SQL tools extension depends on. |
| ```"sqltools.disableNodeDetectNotifications": true``` | Disable Node runtime detection notifications after initial SQLTools extension installation to prevent Node runtime information message display on every new VSCode session start. |
| ```"sqltools.autoOpenSessionFiles": false``` | Prevent auto open of new session SQL editor instance after connecting to the databaase instance. |
| ```"sqltools.results.limit": 10000``` | Maximum number of records to return in results. SQLTools defaults to displaying only 50 records in query results view. Changing this limit setting to 1000 or 10000 will show more data rows to inspect in result views. |
| ```"sqltools.results.location": "current"``` | Defines the edigor group to use for result table views. SQLTools displays all results in the next editor group to show results on the side next to the active SQL query editor. Changing this setting to `current` will display results in the same editor group and display more result colulmns. |

# Feedback

Use [DuckDB SQL Tools Github Discussions](https://github.com/RandomFractals/duckdb-sql-tools/discussions) portal to submit your feedback, share examples of how you are using this VSCode extension, or request new trivial and premium features. Our aim is to make DuckDB more accessible and easier to use in VSCode IDE and Terminal.

# Support

Become a [Fan and Sponsor](https://github.com/sponsors/RandomFractals/sponsorships?sponsor=RandomFractals&tier_id=18883) our dev efforts on this and other [Random Fractals, Inc. code and data viz extensions](https://marketplace.visualstudio.com/publishers/RandomFractalsInc) if you find them useful, educational, or enhancing your daily dataViz dev code workflows and exploratory data analysis:

☕️ https://ko-fi.com/dataPixy 💖 https://github.com/sponsors/RandomFractals
