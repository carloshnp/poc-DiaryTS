import { QueryResult } from "pg";
import { db } from "../config/db.js";
import { EntryEntity } from "../protocols.js";

export function returnEntries(): Promise<QueryResult<EntryEntity>> {
  return db.query(`SELECT id, title, "viewCount" FROM entries;`);
}

export function returnEntry(id) {
  db.query(`UPDATE entries SET "viewCount" = "viewCount" + 1 WHERE id=$1;`, [
    id
  ]);
  return db.query(`SELECT title, text FROM entries WHERE id=$1;`, [id]);
}

export function insertEntry(title, text) {
  return db.query(
    `INSERT INTO entries ("title", "text", "viewCount") VALUES ($1, $2, $3) RETURNING id;`,
    [title, text, 0]
  );
}

export function entryEdit(id, text) {
  return db.query(`UPDATE entries SET text=$2 WHERE id=$1;`, [id, text]);
}

export function entryDelete(id) {
  return db.query(`DELETE FROM entries WHERE id=$1;`, [id]);
}
