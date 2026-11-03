--checks  

  SELECT
prd_id,
COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL


SELECT prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)



SELECT 
DISTINCT prd_line
FROM silver.crm_prd_info

SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost< 0 OR prd_cost IS NULL

SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt
SELECT * FROM silver.crm_prd_info


SELECT DISTINCT 
bdate
FROM silver.erp_cust_az12
WHERE bdate< '1924-01-01' OR bdate> GETDATE()

SELECT DISTINCT cntry
FROM silver.erp_loc_a101
ORDER BY cntry


SELECT * FROM [bronze].[erp_px_cat_g1v2]
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance) 

SELECT DISTINCT maintenance FROM [bronze].[erp_px_cat_g1v2]
