# DuckDB SQL Tools

[![Version](https://img.shields.io/visual-studio-marketplace/v/RandomFractalsInc.duckdb-sql-tools.svg?color=orange&style=?style=for-the-badge&logo=visual-studio-code)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)
[![Installs](https://img.shields.io/visual-studio-marketplace/i/RandomFractalsInc.duckdb-sql-tools.svg?color=orange)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)
[![Downloads](https://img.shields.io/visual-studio-marketplace/d/RandomFractalsInc.duckdb-sql-tools.svg?color=orange)](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools)

[DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) *Preview* extension adds basic [DuckDB](https://duckdb.org/) SQL support to [VS Code](https://code.visualstudio.com/) IDE. This DuckDB VS Code extension provides DuckDB connections and main database schema tree view, SQL query API and user interfaces for the popular [SQL Tools](https://vscode-sqltools.mteixeira.dev/en/home/) extension, SQL query editor, SQL language server, and data processing tools.

![DuckDB SQL Tools](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools.gif?raw=true)

# Features

[DuckDB](https://duckdb.org/docs/) is an in-process SQL [OLAP](https://en.wikipedia.org/wiki/Online_analytical_processing) database management system that uses vectorized data engine for optimized analytics and parallel query processing with extensive SQL support and direct `Parquet`, `CSV`, and `JSON` data loading and query capabilites for local and remote data sources.

[DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) *Preview* extension v1.6.0 adds the following basic DuckDB SQL capabilities to VS Code IDE for working with DuckDB instances:

- **Connect** to a local DuckDB v0.10.2 instance
- **Create** new in-memory DuckDB instance
- **View** DuckDB v0.10.2 tables, columns, and views
- **Run** SQL queries on open DuckDB connections
- **Attach** SQLite database files to in-memory DuckDB instances
- **Query** remote `CSV` and `Parquet` data files with [DuckDB HTTPFS](https://duckdb.org/docs/extensions/httpfs.html) extension
- **Create** in-memory DuckDB tables from remote data sources and query results
- **Manage** DuckDB connections in SQL Tools Connections Explorer
- **Autocomplete** SQL keywords, table names, column names, and view names on open database connections in VS Code SQL editor
- **Save** named SQL query Bookmarks
- **Use** SQL Query History
- **Export** SQL query results in `CSV` and `JSON` data formats

See [SQL Tools documentation](https://vscode-sqltools.mteixeira.dev/en/home/) for a comprehensive list of SQL Tools extension features contributed to VS Code IDE.

# Installation

Install [DuckDB SQL Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) *Preview* extension from [VS Code marketplace](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) in your browser by clicking on **Install** button in the extension info page header.

Alternatively, you can install this extension directly in VS Code IDE from Extensions tab (`ctrl+shift+x`) by searching for `DuckDB`.

![DuckDB SQL Tools VS Code Extension Info](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-extension-info.png?raw=true)

Users of [VS Codium](https://vscodium.com/) and other VS Code based IDEs can install **DuckDB SQL Tools** *Preview* extension using `duckdb-sql-tools-x.x.x.vsix` extension package from the **Assets** section in published [releases](https://github.com/RandomFractals/duckdb-sql-tools/releases) of this extension on GitHub. Follow [install from .vsix](https://code.visualstudio.com/docs/editor/extension-marketplace#_install-from-a-vsix) instructions in your VS Code extensions compatible IDE or online container service to install it.

**Note**: **DuckDB SQL Tools** use [DuckDB Node.js API](https://github.com/duckdb/duckdb-node) and require a local [Node.js installation](https://nodejs.org/en/download) to query DuckDB instances.

Download and install **Node.js** from the official [Node.js downloads](https://nodejs.org/en/download) page. Node.js is used as a local web server to host local data and DuckDB files. Node.js will install **npm** tool we use to install `duckdb-async` library to establish DuckDB connections.

We use Node.js DuckDB library instead of the limited DuckDB WASM browser JS library other similar DuckDB data tools use to enable faster data imports and loading via multi-threaded [`node-gyp`](https://github.com/nodejs/node-gyp) DuckDB native API interface.

# VS Code SQL and Pro Data Tools

The following sections provide a summary of the popular SQL Tools VS Code extension, database drivers, our public **Random Fractals Inc.** [Data Tools](https://marketplace.visualstudio.com/publishers/RandomFractalsInc) extensions, and new premium [Pro Data Tools](https://github.com/RandomFractals/pro-data-tools#pro-data-tools) available to our [Pro sponsors](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) on GitHub.

## SQL Tools

[SQL Tools VS Code extension](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) provides connections to many commonly used databases, and includes database connection management tree view with database schema info and objects display, basic table viewer for SQL query results display, and SQL language server for editing SQL in VS Code with SQL syntax highlighting and auto-completion.

### SQL Tools Drivers

SQL Tools support many popular databases via the [official and community database drivers](https://github.com/mtxr/vscode-sqltools#supported-databases) you can install and use in VS Code IDE from VS Code Marketplace [SQL Tools drivers](https://marketplace.visualstudio.com/search?term=tag%3Asqltools-driver&target=VSCode&category=All%20categories&sortBy=Rating) page.

![SQL Tools Drivers](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/sql-tools-drivers.png?raw=true)

## Random Fractals Data Tools

[Random Fractals](https://github.com/RandomFractals) Inc. [**Data Tools**](https://marketplace.visualstudio.com/publishers/RandomFractalsInc) 🛠️ is a collection of public [data visualization extensions](https://marketplace.visualstudio.com/search?term=dataViz&target=VSCode&category=All%20categories&sortBy=Relevance), [data viewers](https://marketplace.visualstudio.com/search?term=data%20viewer&target=VSCode&category=All%20categories&sortBy=Relevance), VS Code [Notebook renderers](https://marketplace.visualstudio.com/search?term=notebook%20renderer&target=VSCode&category=All%20categories&sortBy=Relevance), and [code snippets](https://marketplace.visualstudio.com/search?term=Random%20Fractals%20code%20snippets&target=VSCode&category=All%20categories&sortBy=Relevance) for devs and data scientists using VS Code IDE, published under our [Random Fractals Inc.](https://marketplace.visualstudio.com/publishers/RandomFractalsInc) ☂️ org.

![Random Fractals Data Tools](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/random-fractals-data-tools.png?raw=true)

## Pro Data Tools

**Pro Data Tools** is our new Premium set of SQL and [PRQL](https://prql-lang.org/) Code Lenses and Data Viewers created for our monthly [**Pro sponsors**](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) on GitHub to enhance SQL development and SQL statements execution runtime workflow in VS Code IDE, connected to the different database management systems via [SQL Tools extension](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools), database plugins, and [SQL Tools drivers](https://marketplace.visualstudio.com/search?term=tag%3Asqltools-driver&target=VSCode&category=All%20categories&sortBy=Rating).

![Pro Data Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/pro-data-tools.png?raw=true)

![SQLite Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/sqlite-tools-extension.png?raw=true)

### DuckDB Pro Tools

**Pro Data Tools** include [DuckDB Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/duckdb-tools.md#duckdb-pro-tools) extension that adds advanced [DuckDB](https://duckdb.org/) connection features and support to VSCode IDE, and provides database schemas display, DuckDB extensions and settings views, information schema and catalog views, SQL query API and user interfaces integrated with the popular SQL Tools extension, SQL query editor, SQL language server, and VS Code data processing tools.

![DuckDB Pro Tools Views](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-pro-tools-views.gif?raw=true)

The latest version of [DuckDB Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/duckdb-tools.md#duckdb-pro-tools) extension adds the following capabilities to VS Code IDE for working with [DuckDB v0.10](https://duckdb.org/2024/02/13/announcing-duckdb-0100.html) instances:

- **Connect** to local DuckDB [v0.10.2](https://github.com/duckdb/duckdb/releases/tag/v0.10.2) instances
- **Create** new in-memory DuckDB instance
- **Import** local and remote `CSV`, `JSON` and `Parquet` data files into in-memory DuckDB instance for exploratory data analysis (EDA)
- **View** DuckDB v0.10.2 databases, schemas, tables, columns, views, indexes, sequences, extensions, settings, functions, types and keywords in SQL Tools Connections Explorer
- **Run** SQL queries on active DuckDB connections
- **Attach** SQLite database files to in-memory DuckDB instances to run analytical queries
- **Query** remote `CSV`, `Parquet`, and `JSON` data files with [DuckDB HTTPFS](https://duckdb.org/docs/extensions/httpfs.html) extension and new [DuckDB JSON](https://duckdb.org/2023/03/03/json.html) extension
- **Create** in-memory DuckDB tables from remote data sources and query results
- **Manage** DuckDB v0.10.2 connections in SQL Tools Connections Explorer
- **Auto-complete** SQL keywords, DuckDB instance table names, column names, and view names for active DuckDB connections in VS Code SQL editor
- **Save** named SQL query Bookmarks
- **Use** SQL Query History
- **Export** DuckDB query results in `CSV` and `JSON` data formats
- **Use** [PRQL Code Lens](https://github.com/RandomFractals/prql-pro-tools#prql-code-lens) from our new [PRQL Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/prql-tools.md) collection to generate and run SQL queries on active DuckDB connection
- **Explore** new `employees.duckdb` demo data, PRQL and SQL sample queries
- **Run** `chicago-crimes` and `gbif-observations` [PRQL](https://prql-lang.org/) and SQL queries on GitHub and AWS S3 hosted `parquet` data files
- **Use** over 30 new `DuckDB Tools` [views and metadata shortcut commands](https://github.com/RandomFractals/pro-data-tools/blob/main/duckdb-tools.md#duckdb-view-commands) from VS Code `Command Palette...`

### DuckDB Pro Tools View Commands

![DuckDB Pro Tools View Commands](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-pro-tools-view-commands.gif?raw=true)

## SQLite Pro Tools

**Pro Data Tools** VS Code extensions also include [**SQLite Pro Tools**](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md). **SQLite Pro Tools** provide over a dozen of common SQLite database shortcut [Commands](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md#commands), display table column data type and primary key indicators, SQLite database [Indexes](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md#indexes), [Modules](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md#modules), [Configuration Settings](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md#configuration-settings) and [Functions](https://github.com/RandomFractals/pro-data-tools/blob/main/sqlite-tools.md#functions).

![SQLite Pro Tools Views](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/sqlite-tools.png?raw=true)

### PRQL Pro Tools

Our [**Pro**](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) sponsors on github also get access to the premium [PRQL Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/prql-tools.md) VS Code extension. The initial private beta release of **PRQL Pro Tools** comes with custom [PRQL Code Lens](https://github.com/RandomFractals/pro-data-tools/blob/main/prql-tools.md#prql-code-lens) SQL Tools plugin that allows you to run [PRQL](https://prql-lang.org/) queries for the supported PRQL target [SQL dialects](https://prql-lang.org/book/project/target.html#dialects) directly using any of the supported SQL Tools extension drivers for the different database management systems.

![PRQL Pro Tools Code Lens](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/prql-code-lens-pro-tools.gif?raw=true)

## Markdown SQL Pro Tools

Recently released private beta of [**Markdown SQL Pro Tools**](https://github.com/RandomFractals/pro-data-tools/tree/main#markdown-sql-pro-tools) add custom SQL [Code Lenses](https://code.visualstudio.com/api/language-extensions/programmatic-language-features#codelens-show-actionable-context-information-within-source-code) to SQL code blocks in standard SQL and various markdown documents in VS Code IDE.

The provided **SQL Code Lenses** include top-level SQL and markdown document `Execute All`, `Select All`, `Extract All`, `Bookmark All` SQL code lenses, `Execute`, `Select`, and `Copy` SQL code block lenses, and `Create` New SQL document from SQL code block lens.

 Our **SQL Code Lenses** integrate with the popular [SQL Tools](https://vscode-sqltools.mteixeira.dev/en/home/) Connections manager, supported [SQL Tools drivers](https://marketplace.visualstudio.com/search?term=tag%3Asqltools-driver&target=VSCode&category=All%20categories&sortBy=Rating), and query results viewer to execute SQL **directly** on any of the supported SQL Tools database management systems and view results.

![Markdown SQL Pro Tools](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/markdown-sql-pro-tools-v1.1.0.gif?raw=true)

**Markdodown SQL Pro Tools** extension is available under the new [**Markdown Sql Pro Tools**](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=295482) monthly sponsor subscription on GitHub and also includes access to the [**DuckDB Pro**](https://randomfractals.github.io/pro-data-tools/#duckdb-pro-tools) SQL Tools plugin and [**PRQL Code Lens**](https://randomfractals.github.io/pro-data-tools/#prql-pro-tools) extension from our Premium [**Pro Data Tools**](https://randomfractals.github.io/pro-data-tools/#pro-data-tools) extensions pack.

## Data Notebook Pro Tools

The new [**Data Notebook Pro Tools**](https://github.com/RandomFractals/pro-data-tools/tree/main#data-notebook-pro-tools) extension from our Premium **Pro Data Tools** extensions pack will be released later this year for our [**Pro sponsors**](https://github.com/sponsors/RandomFractals) on GitHub.

**Data Notebook Pro** extension integrates SQL Tools connections, supported database management systems, our [**Data Table Renderers**](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.vscode-data-table) and VS Code Jupyter Notebook user interface to view and run SQL queries from `.sql` files and `.md` markdown documents with SQL code blocks using native VS Code Notebook View.

![Data Notebook Extension](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/data-notebook-extension.png?raw=true)

### Data Notebook SQL Query

Simple example of running SQL query with the new **Data Notebook Pro Tools** extension:

![Data Notebook SQL Query](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/data-notebook-sql-query.gif?raw=true)

### Data Notebook Output Rendering

Using different [**Data Table Renderers**](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.vscode-data-table) in the **Data Notebook** created from SQL document with multiple SQL queries:

![Data Notebook Output Rendering](https://github.com/RandomFractals/pro-data-tools/blob/main/docs/images/data-notebook-output-rendering.gif?raw=true)

# DuckDB Extensions

DuckDB egnine also provides a number of [Extensions](https://duckdb.org/docs/extensions/overview) you can install and load to work with remote `CSV` and `Parquet` data files over [HTTPFS](https://duckdb.org/docs/extensions/httpfs), enable [Full Text Search](https://duckdb.org/docs/extensions/full_text_search), attach [SQLite](https://sqlite.org/about.html) database with [SQLite Scanner](https://duckdb.org/docs/extensions/sqlite_scanner), or attach [PostgreSQL](https://www.postgresql.org/about/) database instance with DuckDB [Postgres Scanner](https://duckdb.org/docs/extensions/postgres_scanner).

You can check the list of core and installed DuckDB extensions by running the following SQL query on an open database connection:

```sql
select * from duckdb_extensions();
```

![DuckDB SQL Tools DuckDB Extensions](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-duckdb-extensions.png?raw=true)

## DuckDB HTTPFS

**DuckDB SQL Tools** VS Code extension installs and loads [HTTPFS](https://duckdb.org/docs/extensions/httpfs) DuckDB extension by default for all the open database connections. You can add other [DuckDB Extensions](https://duckdb.org/docs/extensions/overview) to the active DuckDB connection by running [`INSTALL` and `LOAD`](https://duckdb.org/docs/extensions/overview#remote-installation) extension SQL statements.

Example of loading trimmed down Chicago crimes data reported in 2022 into an in-memory DuckDB instance from a `.parquet` data file hosted in our [Chicago Crimes](https://github.com/RandomFractals/chicago-crimes) data and analytical tools demo GitHub repository:

![DuckDB SQL Tools HTTPFS](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-httpfs-data-load.gif?raw=true)

This example uses implicitly loaded DuckDB HTTPFS extension to query reported Chicago crimes parquet data file with over 210K recorded crime reports, creates a `CrimeReports` table in a new DuckDB `:memory:` instance from remote parquet data file, and queries imported data.

## DuckDB SQLite Scanner

[SQLite](https://sqlite.org/about.html) database users can use **DuckDB SQL Tools** VS Code extension and DuckDB [SQLite Scanner](https://duckdb.org/docs/extensions/sqlite_scanner) extension to add data from SQLite database to in-memory DuckDB instance.

Run the following SQL statements to add SQLite Scanner DuckDB extension to an open database connection:

```sql
INSTALL sqlite;
LOAD sqlite;
```

With the loaded SQLite Scanner DuckDB extension you can attach SQLite database file to a DuckDB database instance. Attached SQLite database tables will show up as views in DuckDB instance.

Run the following SQL `CALL` function to attach SQLite database instance:

```sql
CALL sqlite_attach('E:\\projects\\data\\tools\\duckdb-tools\\data\\chinook\\sqlite\\chinook.sqlite');
```

![DuckDB SQL Tools SQLite Scanner](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-sqlite-scanner.gif?raw=true)

## DuckDB File References

**Note**: **DuckDB SQL Tools** extension uses [DuckDB NodeJS Client API](https://duckdb.org/docs/api/nodejs/overview). In order to work with local data files, you need to specify full path to your local database or data files in SQL statements that reference local file paths.

Future versions of this extension might simplify local file path references by deducing absolute file path from the local DuckDB file connection string or open VS Code project workspace folder path, and replacing relative database or data file references with the corresponding absolute path in an open VS Code project workspace.

Also, note in the `sqlite_attach()` SQL function call statement above we are escaping `\` file path delimiters on Windows OS by using `\\` characters sequence.

# Demo Data

**DuckDB SQL Tools** extension documentation repository contains sample [/data](https://github.com/RandomFractals/duckdb-sql-tools/tree/main/data/chinook/duckdb) folder with [`chinook.duckdb`](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/data/chinook/duckdb/chinook.duckdb) and [`chinook.sqlite`](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/data/chinook/sqlite/chinook.sqlite) database files, `csv`, `json` and `parquet` data files you can download to get started using DuckDB with our SQL Tools VS Code extension.

The [cninook/duckdb](https://github.com/RandomFractals/duckdb-sql-tools/tree/main/data/chinook/duckdb) demo data folder also has sample SQL query files you can try running on this well-known sample database with our VS Code extension.

![DuckDB SQL Tools Demo Data](https://github.com/RandomFractals/duckdb-sql-tools/blob/main/docs/images/duckdb-sql-tools-data.png?raw=true)

# Limitations

Due to the limited time and minimal development effort invested into building this **Free Trial DuckDB SQL Tools** extension, our Preview version of this extension comes with the following known limitations and supported usage scenarios.

## DuckDB Storage

**DuckDB SQL Tools** *Preview* v1.5.0 release of this extension supports only local database instances created with [DuckDB v0.10.2](https://github.com/duckdb/duckdb/releases/tag/v0.10.2) engine. Database instances and files created with older minor versions of DuckDB are not supported as they use different compression and storage formats and the structure of `.duckdb` file has been changing as DuckDB engine is evolving.

Use [DuckDB CLI](https://duckdb.org/docs/api/cli.html) to export data from the older database file versions and create new `.duckdb` file using the latest DuckDB storage implemenation. Read [Announcing DuckDB 0.10.0](https://duckdb.org/2024/02/13/announcing-duckdb-0100.html) blog post for more information about DuckDB v0.10 storage improvements, backward compatibility, and new features.

You can use prior [`v1.0.2`](https://github.com/RandomFractals/duckdb-sql-tools/releases/tag/v1.0.2) of this free **DuckDB Sql Tools** *Preview* extension to work with the older DuckDB [v0.6.1](https://github.com/duckdb/duckdb/releases/tag/v0.6.1) files. DuckDB SQL Tools [`v1.1.0`](https://github.com/RandomFractals/duckdb-sql-tools/releases/tag/v1.1.0) supports DuckDB [v0.7.1](https://github.com/duckdb/duckdb/releases/tag/v0.7.1), and DuckDB SQL Tools [`v1.2.0`](https://github.com/RandomFractals/duckdb-sql-tools/releases/tag/v1.2.0) supports DuckDB [v0.8.1](https://github.com/duckdb/duckdb/releases/tag/v0.8.1).

The **Premium** [**DuckDB Pro Tools**](https://github.com/RandomFractals/pro-data-tools/tree/main#duckdb-pro-tools) extension version, available to our [**Pro** sponsors](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) on GitHub, supports DuckDB [v0.10.2](https://github.com/duckdb/duckdb/releases/tag/v0.10.2) files with many advanced SQL Tools features, and will be updated to support the latest DuckDB [v1.0.0](https://github.com/duckdb/duckdb/releases) storage format and features soon.

## Read-Only DuckDB

**DuckDB SQL Tools** *Preview* extension opens `.duckdb` database files in `read-only` mode.

The **Premium DuckDB Pro Tools** extension version, available to our [**Pro** sponsors](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) on GitHub, supports opening `.duckdb` files in write mode, provides DuckDB v0.10 support, extended DuckDB connection, schemas, systems objecs, and views display.

## In-Memory DuckDB

You can experiment with writable `:memory:` DuckDB instances in this **DuckDB SQL Tools Preview** extension version. In-memory DuckDB instances function similar to [In-Memory SQLite Databases](https://www.sqlite.org/inmemorydb.html). You can use [DuckDB Import Data](https://duckdb.org/docs/data/overview) and [Atach](https://duckdb.org/docs/sql/statements/attach) features available via DuckDB SQL statements, and use [Export Database](https://duckdb.org/docs/sql/statements/export) SQL statements to export created in-memory DuckDB instances.

**DuckDB SQL Tools** *Preview* extension lets you create in-memory database instances by specifying `:memory:` keyword in the Database File field of the new DuckDB connection in SQL Tools Connection Assistant, as demonstrated in DuckDB HTTPFS and SQLite Scanner extension usage examples above.

**Note**: only `:memory` DuckDB database instances are open in `read/write` mode in this **DuckDB SQL Tools** *Preview* extension version.

Sign up for the Premium [Pro Data Tools on GitHub](https://github.com/sponsors/RandomFractals/sponsorships?tier_id=18884) to get access to the [**DuckDB Pro Tools**](https://github.com/RandomFractals/pro-data-tools/blob/main/duckdb-tools.md#duckdb-pro-tools) and work with the latest versions of DuckDB files in read and write modes.

# Configuration

[SQL Tools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) extension provides many configuration [Settings](https://vscode-sqltools.mteixeira.dev/en/settings/) users can toggle to change database connection and tree view display options, sql formatting, and results display.

The following [SQL Tools Settings](https://vscode-sqltools.mteixeira.dev/en/settings/) were used while creating and testing this **DuckDB SQL Tools** extension and are recommended for working with DuckDB instances efficiently. We suggest you set these preferences in your User Settings in VS Code by navigating to `File -> Preferences -> Settings -> User -> Extensions -> SQLTools`, or adding them to your global VS Code `settings.json` config file using the JSON code snippet below:

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
| ```"sqltools.useNodeRuntime": true``` | Enable Node runtime in order to use [DuckDB NodeJS API](https://github.com/duckdb/duckdb/tree/master/tools/nodejs) **DuckDB SQL Tools** extension depends on. |
| ```"sqltools.disableNodeDetectNotifications": true``` | Disable Node runtime detection notifications after initial SQL Tools extension installation to prevent Node runtime information message display on every new VS Code session start. |
| ```"sqltools.autoOpenSessionFiles": false``` | Prevent auto open of new session SQL editor instance after connecting to the database instance. |
| ```"sqltools.results.limit": 10000``` | Maximum number of records to return in results. SQL Tools defaults to displaying only 50 records in query results view. Changing this limit setting to 1000 or 10000 will show more data rows to inspect in result views. |
| ```"sqltools.results.location": "current"``` | Defines the editor group to use for result table views. SQL Tools display all results in the next editor group to show results on the side next to the active SQL query editor. Changing this setting to `current` will display results in the same editor group and display more result columns. |

# Feedback

Please use our public [DuckDB SQL Tools GitHub Discussions](https://github.com/RandomFractals/duckdb-sql-tools/discussions) portal to submit your feedback, share examples of how you are using **DuckDB SQL Tools** VS Code extension, or request new trivial and premium features. Our goal with this extension and **DuckDB Pro Tools** is to make DuckDB more accessible and easier to use in VS Code IDE.

# Support

Become a [Fan or a Pro Sponsor](https://github.com/sponsors/RandomFractals) of our work on this and other [Random Fractals, Inc. code and data viz extensions](https://marketplace.visualstudio.com/publishers/RandomFractalsInc) if you find them useful, educational, or enhancing your daily dev workflows and exploratory data analysis experience in VS Code IDE.

💖 https://github.com/sponsors/RandomFractals
