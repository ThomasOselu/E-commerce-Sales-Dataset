"""
setup.py — Load ecommerce_sales.csv into SQLite and run all SQL analyses.

Usage:
    python setup.py
"""

import sqlite3
import os
import pandas as pd

DB_PATH  = os.path.join("data", "ecommerce.db")
CSV_PATH = os.path.join("data", "ecommerce_sales.csv")
SQL_DIR  = "sql"

QUERIES = [
    "01_total_summary.sql",
    "02_revenue_by_region.sql",
    "03_revenue_by_category.sql",
    "04_top_products.sql",
    "05_top_customers.sql",
    "06_monthly_trends.sql",
    "07_discount_impact.sql",
    "08_delivery_performance.sql",
    "09_category_by_region.sql",
    "10_high_value_orders.sql",
]


def load_data(conn: sqlite3.Connection) -> None:
    df = pd.read_csv(CSV_PATH)
    df.to_sql("sales", conn, if_exists="replace", index=False)
    row_count = conn.execute("SELECT COUNT(*) FROM sales").fetchone()[0]
    print(f"✅  Loaded {row_count} rows into 'sales' table\n")


def run_query(conn: sqlite3.Connection, filename: str) -> None:
    path = os.path.join(SQL_DIR, filename)
    with open(path) as f:
        sql = f.read()

    # Handle files with multiple statements (e.g. 09_category_by_region.sql)
    statements = [s.strip() for s in sql.split(";") if s.strip() and not s.strip().startswith("--")]

    title = filename.replace(".sql", "").replace("_", " ").upper()
    print(f"{'=' * 60}")
    print(f"  {title}")
    print(f"{'=' * 60}")

    for stmt in statements:
        try:
            df = pd.read_sql_query(stmt, conn)
            print(df.to_string(index=False))
            print()
        except Exception as e:
            print(f"  ⚠️  Could not run statement: {e}\n")


def main() -> None:
    os.makedirs("data", exist_ok=True)

    if not os.path.exists(CSV_PATH):
        raise FileNotFoundError(
            f"CSV not found at '{CSV_PATH}'. "
            "Place ecommerce_sales.csv in the data/ folder and retry."
        )

    conn = sqlite3.connect(DB_PATH)
    try:
        load_data(conn)
        for filename in QUERIES:
            run_query(conn, filename)
    finally:
        conn.close()
    print("✅  All analyses complete.")


if __name__ == "__main__":
    main()
