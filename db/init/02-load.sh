#!/usr/bin/env bash
set -e

echo "Migrating CSV Files"
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -v ON_ERROR_STOP=1 <<-EOSQL
	    COPY customers FROM '/data/olist_customers_dataset.csv' WITH (FORMAT csv, header);
	    COPY sellers FROM '/data/olist_sellers_dataset.csv' WITH (FORMAT csv, header);
	    COPY products FROM '/data/olist_products_dataset.csv' WITH (FORMAT csv, header);
	    COPY orders FROM '/data/olist_orders_dataset.csv' WITH (FORMAT csv, header);
	    COPY order_items FROM '/data/olist_order_items_dataset.csv' WITH (FORMAT csv, header);
	    COPY order_payments FROM '/data/olist_order_payments_dataset.csv' WITH (FORMAT csv, header);
	    COPY order_reviews FROM '/data/olist_order_reviews_dataset.csv' WITH (FORMAT csv, header);
EOSQL
