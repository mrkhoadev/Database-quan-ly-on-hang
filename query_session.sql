CREATE TABLE IF NOT EXISTS customers (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone_number NUMERIC(15,0),
	password VARCHAR(50) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	price INT DEFAULT 0,
	inventory INT DEFAULT 0,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS order_detail (
	id SERIAL PRIMARY KEY NOT NULL,
    product_name VARCHAR(255) NOT NULL,
	desciption TEXT,
    quantity INTEGER DEFAULT 0,
    amount INTEGER DEFAULT 0,
	product_id INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS billding (
	id SERIAL PRIMARY KEY NOT NULL,
	customer_name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone_number NUMERIC(15,0) NOT NULL,
	customer_id INT,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS orders (
	id SERIAL PRIMARY KEY NOT NULL,
	total INT DEFAULT 0,
	status VARCHAR(50) NOT NULL DEFAULT 'cho xac nhan',
	billding_id INT NOT NULL REFERENCES billding(id),
	order_detail_id INT NOT NULL REFERENCES order_detail(id),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO customers (name, email, phone_number, password)
VALUES
    ('Nguyễn Văn A', 'nguyenvana@gmail.com', 123456789, 1234),
    ('Trần Thị B', 'tranthib@gmail.com', 987654321, 2345),
    ('Lê Văn C', 'levanc@gmail.com', 555666777, 3456),
    ('Phạm Thị D', 'phamthid@gmail.com', 999000111, 4567),
    ('Hoàng Văn E', 'hoangvane@gmail.com', 333222111, 5678);

INSERT INTO products (name, description, price, inventory, created_at, updated_at)
VALUES
    ('Bút bi đen', 'Bút bi đen viết mực, chất lượng tốt', 5000, 100, NOW(), NOW()),
    ('Sổ tay A5', 'Sổ tay kích thước A5, bìa cứng, giấy trắng', 20000, 80, NOW(), NOW()),
    ('Máy tính bỏ túi', 'Máy tính di động, dễ sử dụng', 1500000, 20, NOW(), NOW()),
    ('Tai nghe không dây', 'Tai nghe Bluetooth chống ồn', 800000, 30, NOW(), NOW()),
    ('Chuột không dây', 'Chuột máy tính không dây, thiết kế hiện đại', 400000, 50, NOW(), NOW()),
    ('Ổ cứng SSD 500GB', 'Ổ cứng SSD dung lượng 500GB, tăng tốc máy tính', 1200000, 15, NOW(), NOW()),
    ('Bàn là hơi nước', 'Bàn là có chức năng hơi nước, hiệu suất cao', 600000, 10, NOW(), NOW()),
    ('Quạt làm mát', 'Quạt mini làm mát không gây ồn', 300000, 40, NOW(), NOW()),
    ('Thảm trải sàn', 'Thảm trải sàn phòng khách, chống trơn trượt', 250000, 60, NOW(), NOW()),
    ('Đèn bàn LED', 'Đèn bàn LED có thể điều chỉnh độ sáng', 120000, 25, NOW(), NOW()),
    ('Bình nước thể thao', 'Bình nước thể thao dung tích 750ml', 50000, 90, NOW(), NOW()),
    ('Gối ôm hình thú', 'Gối ôm dễ thương với hình thú', 300000, 15, NOW(), NOW()),
    ('Túi xách da cao cấp', 'Túi xách da bền bỉ và sang trọng', 700000, 18, NOW(), NOW()),
    ('Kính mát UV400', 'Kính mát chống tia UV, kiểu dáng thời trang', 250000, 35, NOW(), NOW()),
    ('Quần jean nam', 'Quần jean nam form rộng, thoải mái', 600000, 22, NOW(), NOW()),
    ('Đồng hồ thông minh', 'Đồng hồ thông minh tích hợp nhiều tính năng', 800000, 12, NOW(), NOW()),
    ('Máy xay cà phê', 'Máy xay cà phê chuyên nghiệp', 1200000, 8, NOW(), NOW()),
    ('Bình hoa trang trí', 'Bình hoa trang trí phòng khách', 100000, 30, NOW(), NOW()),
    ('Dụng cụ làm bánh', 'Dụng cụ làm bánh chuyên nghiệp', 350000, 25, NOW(), NOW()),
    ('Áo thun nam', 'Áo thun nam cotton thoáng khí', 150000, 45, NOW(), NOW());
-- SELECT * FROM products

INSERT INTO billding (customer_id, customer_name, email, phone_number, created_at, updated_at)
VALUES
    (1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', 123456789, NOW(), NOW()),
    (2, 'Trần Thị B', 'tranthib@gmail.com', 987654321, NOW(), NOW()),
    (3, 'Lê Văn C', 'levanc@gmail.com', 555666777, NOW(), NOW()),
    (4, 'Phạm Thị D', 'phamthid@gmail.com', 999000111, NOW(), NOW()),
    (5, 'Hoàng Văn E', 'hoangvane@gmail.com', 333222111, NOW(), NOW()),
    (1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', 123456789, NOW(), NOW()),
    (2, 'Trần Thị B', 'tranthib@gmail.com', 987654321, NOW(), NOW()),
    (3, 'Lê Văn C', 'levanc@gmail.com', 555666777, NOW(), NOW()),
    (4, 'Phạm Thị D', 'phamthid@gmail.com', 999000111, NOW(), NOW()),
    (5, 'Hoàng Văn E', 'hoangvane@gmail.com', 333222111, NOW(), NOW()),
    (1, 'Nguyễn Thị F', 'nguyenthif@gmail.com', 777888999, NOW(), NOW()),
    (2, 'Trần Văn G', 'tranvang@gmail.com', 111222333, NOW(), NOW()),
    (3, 'Lê Thị H', 'lethih@gmail.com', 444555666, NOW(), NOW()),
    (4, 'Phạm Văn I', 'phamvani@gmail.com', 888777666, NOW(), NOW()),
    (5, 'Hoàng Thị K', 'hoangthik@gmail.com', 666555444, NOW(), NOW());

INSERT INTO order_detail (product_name, desciption, quantity, amount, product_id)
VALUES
  ('Bút bi đen', 'Bút bi đen viết mực, chất lượng tốt', 3, 15000, 1),
  ('Sổ tay A5', 'Sổ tay kích thước A5, bìa cứng, giấy trắng', 2, 40000, 2),
  ('Máy tính bỏ túi', 'Máy tính di động, dễ sử dụng', 1, 1500000, 3),
  ('Tai nghe không dây', 'Tai nghe Bluetooth chống ồn', 2, 1600000, 4),
  ('Chuột không dây', 'Chuột máy tính không dây, thiết kế hiện đại', 1, 400000, 5),
  ('Ổ cứng SSD 500GB', 'Ổ cứng SSD dung lượng 500GB, tăng tốc máy tính', 3, 3600000, 6),
  ('Bàn là hơi nước', 'Bàn là có chức năng hơi nước, hiệu suất cao', 1, 600000, 7),
  ('Quạt làm mát', 'Quạt mini làm mát không gây ồn', 2, 600000, 8),
  ('Thảm trải sàn', 'Thảm trải sàn phòng khách, chống trơn trượt', 1, 250000, 9),
  ('Đèn bàn LED', 'Đèn bàn LED có thể điều chỉnh độ sáng', 2, 240000, 10);

INSERT INTO orders (total, billding_id, order_detail_id)
VALUES
  -- Đơn hàng 1
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 1),
    1,
    1
  ),
  -- Đơn hàng 2
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 2),
    2,
    2
  ),
  -- Đơn hàng 3
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 3),
    3,
    3
  ),
  -- Đơn hàng 4
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 4),
    4,
    4
  ),
  -- Đơn hàng 5
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 5),
    5,
    5
  ),
  -- Đơn hàng 6
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 6),
    1,
    6
  ),
  -- Đơn hàng 7
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 7),
    2,
    7
  ),
  -- Đơn hàng 8
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 8),
    3,
    8
  ),
  -- Đơn hàng 9
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 9),
    4,
    9
  ),
  -- Đơn hàng 10
  (
    (SELECT od.amount * od.quantity FROM order_detail od WHERE od.id = 10),
    5,
    10
  );
-- SELECT * FROM orders

WITH orders_lists AS (
	SELECT 
		o.id AS "STT",
		b.customer_name AS "Tên khách hàng",
		b.email,
		b.phone_number AS "Số điện thoại khách hàng",
		od.quantity AS "Số lượng",
		TO_CHAR(od.amount, 'FM999,999,999') || 'đ' AS "Tổng tiền",
		o.status AS "Trạng thái",
		o.created_at AS "Thời gian đặt"
	FROM orders AS o
	LEFT JOIN billding AS b ON b.id = o.billding_id
	LEFT JOIN order_detail AS od ON od.id = o.order_detail_id
)
SELECT * FROM orders_lists;

WITH orders_details AS (
	SELECT 
		od.id AS "STT",
		b.customer_name AS "Tên khách hàng",
		b.email,
		b.phone_number AS "Số điện thoại khách hàng",
		od.product_name AS "Tên sản phẩm",
		od.product_id AS "Mã sản phẩm",
		TO_CHAR(od.amount, 'FM999,999,999') || 'đ' AS "Giá sản phẩm",
		od.quantity AS "Số lượng",
		TO_CHAR(o.total, 'FM999,999,999') || 'đ' AS "Tổng tiền từng sản phẩm",
		o.status AS "Trang thái đơn hàng",
		o.created_at AS "Thời gian tạo đơn hàng",
		o.updated_at AS "Thời gian cập nhật cuối cùng"
	FROM order_detail AS od
	LEFT JOIN orders AS o ON od.id = o.order_detail_id
	LEFT JOIN billding AS b ON b.id = o.billding_id
)
SELECT * FROM orders_details;
