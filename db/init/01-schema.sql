CREATE TABLE customers (
  customer_id uuid PRIMARY KEY,
  customer_unique_id uuid NOT NULL,
  customer_zip_code_prefix text,
  customer_city	text,
  customer_state text
);

CREATE TABLE orders (
  order_id	uuid PRIMARY KEY,
  customer_id	uuid NOT NULL,
  order_status text NOT NULL,
  order_purchase_timestamp timestamp NOT NULL,
  order_approved_at	 timestamp,
  order_delivered_carrier_date timestamp,
  order_delivered_customer_date	 timestamp,
  order_estimated_delivery_date timestamp
);

CREATE TABLE order_items (
  order_id uuid,
  order_item_id	integer,
  product_id uuid NOT NULL,
  seller_id	uuid NOT NULL,
  shipping_limit_date	timestamp,
  price	numeric(10,2),
  freight_value numeric(10,2),
  PRIMARY KEY(order_id, order_item_id)
);

CREATE TABLE sellers (
  seller_id	uuid PRIMARY KEY,
  seller_zip_code_prefix text,
  seller_city	text,
  seller_state text
);

CREATE TABLE order_payments (
  order_id	uuid,
  payment_sequential integer,
  payment_type text,
  payment_installments integer,
  payment_value numeric(10,2),
  PRIMARY KEY(order_id, payment_sequential)
);

CREATE TABLE products (
  product_id uuid PRIMARY KEY,
  product_category_name text,
  product_name_lenght integer,
  product_description_lenght integer,
  product_photos_qty integer,
  product_weight_g integer,
  product_length_cm integer,
  product_height_cm integer,
  product_width_cm integer
);

CREATE TABLE order_reviews (
  review_id	uuid,
  order_id uuid,
  review_score smallint CHECK (review_score BETWEEN 1 AND 5),
  review_comment_title text,
  review_comment_message text,
  review_creation_date timestamp,
  review_answer_timestamp timestamp,
  PRIMARY KEY(review_id, order_id)
);
