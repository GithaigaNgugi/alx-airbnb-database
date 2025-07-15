# Database Normalization to 3NF

## Original Schema Overview

### Table: Orders
| order_id | customer_name | customer_email | product_name | product_price | quantity |
|----------|----------------|----------------|--------------|----------------|----------|

## Identified Redundancies and Violations

- `customer_name` and `customer_email` are repeated if a customer makes multiple orders.
- `product_name` and `product_price` are repeated across different orders for the same product.
- Violates 2NF and 3NF due to transitive dependencies and partial dependencies.

---

## Step-by-Step Normalization

### 1NF: Ensure Atomic Columns
- The table already contains atomic values; no repeating groups. ✅

### 2NF: Remove Partial Dependencies
- `customer_name` and `customer_email` depend only on part of the key (`order_id`), not fully dependent.
- Split into a new `Customers` table.

### 3NF: Remove Transitive Dependencies
- `product_price` depends on `product_name`, not directly on `order_id`.
- Extract into a new `Products` table.

---

## Revised Schema in 3NF

### Table: Customers
| customer_id | customer_name | customer_email |
|-------------|----------------|----------------|

### Table: Products
| product_id | product_name | product_price |
|------------|--------------|----------------|

### Table: Orders
| order_id | customer_id | order_date |

### Table: OrderItems
| order_id | product_id | quantity |

---

## Justification

- All tables are in **3NF**:
  - No repeating groups (1NF)
  - No partial dependencies (2NF)
  - No transitive dependencies (3NF)
- Schema is now more scalable, avoids duplication, and ensures data integrity.

