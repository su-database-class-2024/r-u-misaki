SELECT store.*, address.* 
FROM store 
JOIN address ON store.address_id = address.address_id;
