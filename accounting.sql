-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2015 at 05:23 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE IF NOT EXISTS `account_types` (
  `id` int(11) NOT NULL,
  `element` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `classification` varchar(50) NOT NULL,
  `account_title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `element`, `type`, `classification`, `account_title`) VALUES
(1, 'asset', 'current', 'liquid_asset', 'cash_on_hand'),
(2, 'asset', 'current', 'liquid_asset', 'cash_in_bank'),
(3, 'asset', 'current', 'liquid_asset', 'other_liquid_asset'),
(4, 'asset', 'current', 'marketable_securities', 'share_certificates'),
(5, 'asset', 'current', 'marketable_securities', 'private_sector_bonds'),
(6, 'asset', 'current', 'marketable_securities', 'public_sector_bonds'),
(7, 'asset', 'current', 'trade_receivables', 'accounts_receivable'),
(8, 'asset', 'current', 'trade_receivables', 'notes_receivables'),
(9, 'asset', 'current', 'trade_receivables', 'doubtful_trade_receivables'),
(10, 'asset', 'current', 'trade_receivables', 'provision_for_doubtful_trade_receivables'),
(11, 'asset', 'current', 'prepaid_expenses_and_income_accruals', 'prepaid_expenses'),
(12, 'asset', 'current', 'prepaid_expenses_and_income_accruals', 'income_accruals'),
(13, 'asset', 'current', 'other_current_asset', 'deferred_vat'),
(14, 'asset', 'current', 'other_current_asset', 'deductible_vat'),
(15, 'asset', 'current', 'other_current_asset', 'prepaid_taxes_and_funds'),
(16, 'asset', 'current', 'other_current_asset', 'work_advances'),
(17, 'asset', 'current', 'other_current_asset', 'advances_to_personnel'),
(18, 'asset', 'current', 'other_current_asset', 'other_current_asset'),
(19, 'asset', 'current', 'other_current_asset', 'provision_for_other_current_asset'),
(20, 'asset', 'non-current', 'trade_receivables', 'notes_receivables'),
(21, 'asset', 'non-current', 'trade_receivables', 'rediscounts_on_notes_receivables'),
(22, 'asset', 'non-current', 'other_receivables', 'due_from_shareholders'),
(23, 'asset', 'non-current', 'other_receivables', 'due_from_affiliates'),
(24, 'asset', 'non-current', 'other_receivables', 'due_from_subsidiaries'),
(25, 'asset', 'non-current', 'other_receivables', 'due_from_personnel'),
(26, 'asset', 'non-current', 'other_receivables', 'other_receivables'),
(27, 'asset', 'non-current', 'financial_fixed_assets', 'long-term_securities'),
(28, 'asset', 'non-current', 'financial_fixed_assets', 'provision_for_decrease_in_value_of_long-term_securities'),
(29, 'asset', 'non-current', 'financial_fixed_assets', 'affiliates'),
(30, 'asset', 'non-current', 'financial_fixed_assets', 'capital_commitments_to_affiliates'),
(31, 'asset', 'non-current', 'financial_fixed_assets', 'provision_for_decrease_in_value_of_shares_of_affiliates'),
(32, 'asset', 'non-current', 'financial_fixed_assets', 'subsidiaries'),
(33, 'asset', 'non-current', 'financial_fixed_assets', 'capital_commitments_for_subsidiaries'),
(34, 'asset', 'non-current', 'financial_fixed_assets', 'provision_for_decrease_in_value_of_shares_of_subsidiaries'),
(35, 'asset', 'non-current', 'financial_fixed_assets', 'other_financial_fixed_assets'),
(36, 'asset', 'non-current', 'financial_fixed_assets', 'provision_for_decrease_in_value_of_other_financial_fixed_assets'),
(37, 'asset', 'non-current', 'tangible_fixed_assets', 'land'),
(38, 'asset', 'non-current', 'tangible_fixed_assets', 'land_improvements'),
(39, 'asset', 'non-current', 'tangible_fixed_assets', 'buildings'),
(40, 'asset', 'non-current', 'tangible_fixed_assets', 'plant_machinery_and_equipment'),
(41, 'asset', 'non-current', 'tangible_fixed_assets', 'motor_vehicles'),
(42, 'asset', 'non-current', 'tangible_fixed_assets', 'furniture_and_fixtures'),
(43, 'asset', 'non-current', 'tangible_fixed_assets', 'other_tangible_fixed_assets'),
(44, 'asset', 'non-current', 'tangible_fixed_assets', 'accumulated_depreciation'),
(45, 'asset', 'non-current', 'tangible_fixed_assets', 'construction_in_progress'),
(46, 'asset', 'non-current', 'tangible_fixed_assets', 'advances_given'),
(47, 'asset', 'non-current', 'intangible_fixed_assets', 'rights'),
(48, 'asset', 'non-current', 'intangible_fixed_assets', 'goodwill'),
(49, 'asset', 'non-current', 'intangible_fixed_assets', 'establishment_and_foundation_expenses'),
(50, 'asset', 'non-current', 'intangible_fixed_assets', 'research_and_development_expenses'),
(51, 'asset', 'non-current', 'intangible_fixed_assets', 'special_costs'),
(52, 'asset', 'non-current', 'intangible_fixed_assets', 'other_intangible_fixed_assets'),
(53, 'asset', 'non-current', 'intangible_fixed_assets', 'accumulated_depreciation'),
(54, 'asset', 'non-current', 'intangible_fixed_assets', 'advances_given'),
(55, 'asset', 'non-current', 'prepaid_expenses_and_income_accruals', 'prepaid_expenses'),
(56, 'asset', 'non-current', 'prepaid_expenses_and_income_accruals', 'income_accruals'),
(57, 'asset', 'non-current', 'other_fixed_assets', 'vat_deductible'),
(58, 'asset', 'non-current', 'other_fixed_assets', 'other_vat'),
(59, 'asset', 'non-current', 'other_fixed_assets', 'long-term_inventories'),
(60, 'asset', 'non-current', 'other_fixed_assets', 'inventories_and_tangible_fixed_assets'),
(61, 'asset', 'non-current', 'other_fixed_assets', 'prepaid_taxes_and_funds'),
(62, 'asset', 'non-current', 'other_fixed_assets', 'other_fixed_assets'),
(63, 'asset', 'non-current', 'other_fixed_assets', 'provision_for_decrease_in_value_of_inventories'),
(64, 'asset', 'non-current', 'other_fixed_assets', 'accumulated_depreciation'),
(65, 'liability', 'current', 'financial_liabilities', 'bank_loans'),
(66, 'liability', 'current', 'financial_liabilities', 'liabilities_arising_from_financial_leasing_transactions');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL,
  `account_types_id` int(11) NOT NULL,
  `account_title` varchar(100) NOT NULL,
  `debit_amount` decimal(18,2) NOT NULL,
  `credit_amount` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`), ADD KEY `account_types_id` (`account_types_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`account_types_id`) REFERENCES `account_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
