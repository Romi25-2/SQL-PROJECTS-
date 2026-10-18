DELIMITER//
CREATE PROCEDURE  SearchVendorsByProduct (IN productSearchTerm VARCHAR(100)
)
BEGIN
	SELECT
    PRODUCT.Product_Code,
    PRODUCT.Product_Name,
    VENDOR.Vendor_Name
    FROM PRODUCT
    INNER JOIN VENDOR_PRODUCT
		ON PRODUCT.Product_Code = VENDOR_PRODUCT.Product_Code
        INNER JOIN VENDOR
        ON VENDOR_PRODUCT.Vendor_Code = VENDOR.Vendor_Code
        WHERE PRODUCT.Product_Name LIKE CONCAT('%', productSearchTerm, '%');

END //
DELIMITER;
CALL SearchVendorsByProduct('drive');
