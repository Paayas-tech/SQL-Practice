# Data Modeling Basics

## Overview

This section introduces the fundamentals of relational database design by creating related tables for a simple music database.

---

## Concepts Covered

- Creating Tables
- Primary Keys
- Auto-generated Identity Columns
- One-to-Many Relationships
- Database Modeling
- Inserting Sample Data

---

## Tables Created

- Artists
- Albums
- Tracks

---

## Relationship

Artist (1)
    │
    └──────< Album (Many)
                 │
                 └──────< Track (Many)

---

## Files

- `01_artists.sql`
- `02_albums.sql`
- `03_tracks.sql`

---

## Learning Outcomes

After completing this topic, I learned how to:

- Design related database tables
- Build One-to-Many relationships
- Organize data into separate tables
- Insert and verify sample records
- Create a basic relational database schema