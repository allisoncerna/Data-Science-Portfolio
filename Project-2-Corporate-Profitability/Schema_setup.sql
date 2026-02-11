CREATE TABLE `retail_sales` (
  `product_id` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `season` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `markdown_percentage` decimal(10,2) DEFAULT NULL,
  `current_price` decimal(10,2) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `customer_rating` decimal(3,1) DEFAULT NULL,
  `is_returned` varchar(10) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
