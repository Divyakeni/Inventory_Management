-- CREATE VIEW view_PowerBI_FactInventorySummary as 
SELECT 
    d.YearNumber,
    d.QuarterNumber,
    d.MonthNumber,
    d.MonthName,
    CAST(CONCAT(YearNumber,LPAD(MonthNumber, 2, '0')) AS UNSIGNED) AS YearMonthKey,
	f.FactoryCode, 
    f.FactoryName, 
    f.City, 
    f.Country, 
    f.Region, 
    f.PlantType,
    p.SKU,
    p.ProductName, 
    p.ModelNumber, 
    p.UOM, 
    p.BusinessUnitCode, 
    p.BusinessUnitName, 
    p.SegmentCode, 
    p.SegmentName, 
    p.SubsegmentCode, 
    p.SubsegmentName, 
    p.ProductCategoryCode, 
    p.ProductCategoryName,
    SUM(fi.OnHandQty) AS OnHandQty,
    SUM(fi.AvailableQty) AS AvailableQty,
    SUM(fi.ReservedQty) AS ReservedQty,
    SUM(fi.InTransitQty) AS InTransitQty,
    SUM(fi.InventoryValue) AS InventoryValue
     
FROM factinventory fi
left outer join DimDate d
on fi.DateKey = d.DateKey

left outer join dimfactory f
on fi.FactoryKey = f.FactoryKey

left outer join dimproduct p
on fi.ProductKey = p.ProductKey

GROUP BY 
d.YearNumber,
    d.QuarterNumber,
    d.MonthNumber,
    d.MonthName,
    CAST(CONCAT(YearNumber,LPAD(MonthNumber, 2, '0')) AS UNSIGNED),
	f.FactoryCode, 
    f.FactoryName, 
    f.City, 
    f.Country, 
    f.Region, 
    f.PlantType,
    p.SKU,
    p.ProductName, 
    p.ModelNumber, 
    p.UOM, 
    p.BusinessUnitCode, 
    p.BusinessUnitName, 
    p.SegmentCode, 
    p.SegmentName, 
    p.SubsegmentCode, 
    p.SubsegmentName, 
    p.ProductCategoryCode, 
    p.ProductCategoryName;
    