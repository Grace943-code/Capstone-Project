import * as sqlite from "sqlite";
import sqlite3 from 'sqlite3';
// import express from 'express';

// const app = express();

// app.use(express.static('public'));
// app.use(express.json());

const db=await sqlite.open({
    filename: './data.db',
    driver: sqlite3.Database
});

//add above the db.migrate command
await db.exec(`PRAGMA foreign_keys =ON;`);

await db.migrate();
