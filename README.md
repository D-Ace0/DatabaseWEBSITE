# HomySync

An ASP.NET Web Forms and SQL Server home-management project for organizing users, rooms, devices, tasks, schedules, reminders, and device state.

## Features

- User registration, login, and profile views
- Device registration and room assignment
- Room availability and room/device views
- Task creation, assignment, completion, and deadline updates
- Schedule and reminder creation
- Device charging controls and charge-status views
- Device status and location views

## Tech stack

- ASP.NET Web Forms
- C# code-behind
- Microsoft SQL Server / T-SQL
- ADO.NET-style database access
- Bootstrap, JavaScript, CSS, DataTables, and Font Awesome

## Project structure

```text
eLibrary/
├── eLibrary.sln
└── eLibrary/
    ├── HomeSync.csproj
    ├── HomeSync (7).sql
    ├── Site1.Master
    ├── Web.config
    ├── *.aspx
    ├── *.aspx.cs
    ├── css/
    ├── images/
    └── bootstrap/
```

Each workflow is represented by a Web Forms page and its C# code-behind—for example `addDevice`, `assignRoom`, `addTask`, `createSchedule`, `setCharging`, `viewStatus`, and `locationOfDevice`.

## Getting started

1. Install Visual Studio with ASP.NET/.NET Framework web development support.
2. Install Microsoft SQL Server and SQL Server Management Studio.
3. Restore/import the schema and procedures from `HomeSync (7).sql`.
4. Update the database connection string in `Web.config` for your environment.
5. Open `eLibrary/eLibrary.sln` in Visual Studio.
6. Build and run the web project with IIS Express.

Do not commit real database credentials. Use a local/development database and review the SQL script before importing it.

## Demo

- [Updated project overview](https://www.youtube.com/watch?v=d3B1P8GsAgY&t=82s)
- [Earlier functional overview](https://www.youtube.com/watch?v=TcIEZzJXFqI&t=327s)

## Notes

This is a fourth-semester database project. It demonstrates relational workflow design and database-backed web forms; it is not presented as an IoT integration or real-time device-control platform.

