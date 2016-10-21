ALTER TABLE `zpar_master_data` ADD `Availability Check change` VARCHAR(10) NULL AFTER `Availability Check`;
ALTER TABLE `zpar_master_data` ADD `Safety stock change` VARCHAR(10) NULL AFTER `Safety stock`;
ALTER TABLE `zpar_master_data` ADD `Safety time ind change` VARCHAR(10) NULL AFTER `Safety time ind`;
ALTER TABLE `zpar_master_data` ADD `Takt time change` VARCHAR(10) NULL AFTER `Takt time`;
ALTER TABLE `zpar_master_data` ADD `Maximum stock level change` VARCHAR(10) NULL AFTER `Maximum stock level`;
ALTER TABLE `zpar_master_data` ADD `Lot size key change` VARCHAR(10) NULL AFTER `Lot size key`;
ALTER TABLE `zpar_master_data` ADD `Rounding Value change` VARCHAR(10) NULL AFTER `Rounding Value`;
ALTER TABLE `zpar_master_data` ADD `Maximum Lot size change` VARCHAR(10) NULL AFTER `Maximum Lot size`;
ALTER TABLE `zpar_master_data` ADD `Minimum Lot size change` VARCHAR(10) NULL AFTER `Minimum Lot size`;
ALTER TABLE `zpar_master_data` ADD `Procurement Type change` VARCHAR(10) NULL AFTER `Procurement Type`;
ALTER TABLE `zpar_master_data` ADD `three_check` VARCHAR(10) NULL AFTER `Effective Out Date`;
ALTER TABLE `zpar_master_data` ADD `Quota Arrangement us change` VARCHAR(10) NULL AFTER `Quota Arrangement us`;
ALTER TABLE `zpar_master_data` ADD `InhseProdnTime change` VARCHAR(10) NULL AFTER `InhseProdnTime`;
ALTER TABLE `zpar_master_data` ADD `Goods receipt procc change` VARCHAR(10) NULL AFTER `Goods receipt procc`;
ALTER TABLE `zpar_master_data` ADD `Schedule Margin key change` VARCHAR(10) NULL AFTER `Schedule Margin key`;
ALTER TABLE `zpar_master_data` ADD `Period Indicator change` VARCHAR(10) NULL AFTER `Period Indicator`;
ALTER TABLE `zpar_master_data` ADD `Planned delivery tim change` VARCHAR(10) NULL AFTER `Planned delivery tim`;
ALTER TABLE `zpar_master_data` ADD `Selection Method change` VARCHAR(10) NULL AFTER `Selection Method`;
ALTER TABLE `zpar_master_data` ADD `Prod.Sched.Profile change` VARCHAR(10) NULL AFTER `Prod.Sched.Profile`;
UPDATE `zpar_master_data` SET `Availability Check change` = 'KP' WHERE `MRP Type` = 'ZS';
UPDATE `zpar_master_data` SET `Availability Check change` = 'Z4' WHERE `Material Type` = 'FERT' AND (`Plant` = 5578 OR `Plant` = 0538 OR `Plant` = 9216);
UPDATE `zpar_master_data` SET `Availability Check change` = '01' WHERE `Material Type` = 'ROH';
UPDATE `zpar_master_data` SET `Availability Check change` = '02' WHERE `Material Type` = 'FERT' AND `Plant` != 5578 AND `Plant` != 0538 AND `Plant` != 9216;
UPDATE `zpar_master_data` SET `Availability Check change` = '02' WHERE `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Maximum stock level change` = 0 WHERE `Material Type` = 'HALB' OR `Material Type` = 'FERT';
UPDATE `zpar_master_data` SET `Maximum stock level change` = 30000 WHERE `MRP Controller` = 'F04' AND (`Material Type` = 'HALB' OR `Material Type` = 'FERT');
UPDATE `zpar_master_data` SET `Maximum Lot size change`='POSS' WHERE `Material Type` = 'FERT' OR `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Maximum Lot size change`=0 WHERE `Maximum Lot size`=0 and (`Material Type` = 'ROH' OR `Material Type` = 'UNBW');
UPDATE `zpar_master_data` SET `Minimum Lot size change` = 'POSS' WHERE `Material Type` = 'FERT' OR `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `three_check` = 1 WHERE `Discontinuation ind` != '' OR `Follow up ind` != '' OR `Effective Out Date` != '';
UPDATE `zpar_master_data` SET `Procurement Type change` = 'F' WHERE `Material Type` = 'ROH' OR `Material Type` = 'UNBW';  
UPDATE `zpar_master_data` SET `Procurement Type change` = 'X' WHERE `Material Type` = 'FERT';
UPDATE `zpar_master_data` SET `Procurement Type change` = 'F' WHERE `Material Type` = 'FERT' AND `MRP Type` = 'PD';
UPDATE `zpar_master_data` SET `Quota Arrangement us change` = 3;
UPDATe `zpar_master_data` SET `InhseProdnTime change` = 0;
UPDATE `zpar_master_data` SET `Goods receipt procc change` = 0 WHERE `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Goods receipt procc change` = 0 WHERE `Goods receipt procc` = '0' AND `Material Type` = 'FERT' AND (`Plant` = 0386 OR `Plant` = 1864);
UPDATE `zpar_master_data` SET `Goods receipt procc change` = 1 WHERE `Goods receipt procc` = '1' AND `Material Type` = 'FERT' AND (`Plant` = 5578 OR `Plant` = 0538 OR `Plant` = 9216);
UPDATE `zpar_master_data` SET `Schedule Margin key change` = '000' WHERE `Material Type` = 'FERT' OR `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Period Indicator change` = 'M';
UPDATE `zpar_master_data` SET `Planned delivery tim change` = 0 WHERE `Material Type` = 'FERT' AND `Planned delivery tim` = 0;
UPDATE `zpar_master_data` SET `Planned delivery tim change` = 0 WHERE `Material Type` = 'HALB' AND (`Plant` = 0386 OR `Plant` = 1864);
UPDATE `zpar_master_data` SET `Planned delivery tim change` = 1 WHERE `Material Type` = 'HALB' AND (`Plant` = 0538 OR `Plant` = 5578 OR `Plant` = 9216);
UPDATE `zpar_master_data` SET `Selection Method change` = 3 WHERE `Material Type` = 'FERT' OR `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Selection Method change` = '' WHERE `Material Type` = 'ROH' OR `Material Type` = 'UNBW';
UPDATE `zpar_master_data` SET `Prod.Sched.Profile change` = 'PI01' WHERE `Material Type` = 'FERT' OR `Material Type` = 'HALB';
UPDATE `zpar_master_data` SET `Prod.Sched.Profile change` = '' WHERE `Material Type` = 'ROH' OR `Material Type` = 'UNBW';