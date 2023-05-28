CREATE TABLE carts (
	id UUID PRIMARY KEY,
	user_id UUID NOT NULL,
	created_at DATE NOT NULL,
	updated_at DATE NOT NULL,
	status cart_status NOT NULL
);

CREATE TYPE cart_status AS ENUM ('OPEN', 'ORDERED');

CREATE TABLE cart_items ( cart_id UUID REFERENCES carts(id), product_id UUID, count INTEGER );

INSERT INTO carts (id, user_id, created_at, updated_at, status) VALUES ('7d11f2c7-4f47-4fb4-a823-4087e46b8d9c', '7d11f2c7-4f47-4fb4-a823-4087e46b8d9c', '2022-01-01', '2022-01-01', 'OPEN'), ('fb5e618f-f835-4d0e-a9ed-f8f50c9a09ec', 'fb5e618f-f835-4d0e-a9ed-f8f50c9a09ec', '2022-01-01', '2022-01-01', 'ORDERED'), ('3c372d9d-3969-40a5-8a2e-3b0f8ad930b5', '7d11f2c7-4f47-4fb4-a823-4087e46b8d9c', '2022-01-02', '2022-01-02', 'OPEN'), ('5d9f3125-da5e-4656-b6e0-fdae34d3c909', '5d9f3125-da5e-4656-b6e0-fdae34d3c909', '2022-01-02', '2022-01-02', 'ORDERED');

INSERT INTO cart_items (cart_id, product_id, count) VALUES ('7d11f2c7-4f47-4fb4-a823-4087e46b8d9c', 'f1ec8092-4e5c-4842-892d-9932613aba04', 3), ('7d11f2c7-4f47-4fb4-a823-4087e46b8d9c', '4248edb4-367d-4b68-9a1a-357bfc5dd091', 1), ('fb5e618f-f835-4d0e-a9ed-f8f50c9a09ec', '45e7520f-97cd-4562-8d31-61bd6fca54c8', 2), ('3c372d9d-3969-40a5-8a2e-3b0f8ad930b5', 'f1ec8092-4e5c-4842-892d-9932613aba04', 4), ('3c372d9d-3969-40a5-8a2e-3b0f8ad930b5', '4248edb4-367d-4b68-9a1a-357bfc5dd091', 2), ('5d9f3125-da5e-4656-b6e0-fdae34d3c909', 'f1ec8092-4e5c-4842-892d-9932613aba04', 1), ('5d9f3125-da5e-4656-b6e0-fdae34d3c909', '45e7520f-97cd-4562-8d31-61bd6fca54c8', 3);

select * from carts;
select * from cart_items;