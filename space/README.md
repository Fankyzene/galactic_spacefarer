# Getting Started

Welcome to my Galactic application!

# CAP Project with SQLite

## Requirements

- **Node.js**: version **20** or higher
- **@sap/cds (CAP CLI)**: version **9** or higher
- **SQLite3 **: version **2.0.2** or higher


Setup:

- Clone the repository from Git
    cd <project-folder>
- Install dependencies:
    npm install
    bash
- Install SQLite
    npm add @cap-js/sqlite -D
    bash
- Run database deploy
    cds deploy --to sqlite
- Start the application
    cds watch

You can reach the application here:
http://localhost:4004/project1/webapp/index.html


Project Structure
.
├── db/               # Database models (.cds files)
├── srv/              # Service definitions (.cds/.js files)
├── package.json
├── README.md
└── db.sqlite         # SQLite database (generated after deploy)

## Authentication

The service is protected by basic auth. The following users are pre-configured:

Username	        Password	Roles
Alice	            4Ld1	    admin
authenticated-user	            user

With admin role, you can create/read/update/delete any Spacefarer.

Other users can only read Spacefarers on their own planet.


## Test 

Test POST call in "test.http" in root, with autentication.