-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2015 at 06:25 AM
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
  `classification` varchar(100) NOT NULL,
  `account_title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

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
(66, 'liability', 'current', 'financial_liabilities', 'liabilities_arising_from_financial_leasing_transactions'),
(67, 'liability', 'current', 'financial_liabilities', 'deferred_financial_leasing_borrowing_costs'),
(68, 'liability', 'current', 'financial_lilabilities', 'current_maturities_of_long-term_credits_and_accrued_interest'),
(69, 'liability', 'current', 'financial_liabilities', 'current_maturities_of_bonds_and_accrued_interest'),
(70, 'liability', 'current', 'financial_lilabilities', 'bonds_and_notes_issued'),
(71, 'liability', 'current', 'financial_liabilities', 'other_securities_issued'),
(72, 'liability', 'current', 'financial_lilabilities', 'value_difference_of_securities_issued'),
(73, 'liability', 'current', 'financial_liabilities', 'other_financial_liabilities'),
(74, 'liability', 'current', 'trade_payables', 'suppliers'),
(75, 'liability', 'current', 'trade_payables', 'notes_payable'),
(76, 'liability', 'current', 'trade_payables', 'rediscounts_on_notes_payable'),
(77, 'liability', 'current', 'trade_payables', 'deposits_and_guarantees_received'),
(78, 'liability', 'current', 'trade_payables', 'other_trade_payables'),
(79, 'liability', 'current', 'other_liabilities', 'due_to_shareholders'),
(80, 'liability', 'current', 'other_liabilities', 'due_to_affiliates'),
(81, 'liability', 'current', 'other_liabilities', 'due_to_subsidiaries'),
(82, 'liability', 'current', 'other_liabilities', 'due_to_personnel'),
(83, 'liability', 'current', 'other_liabilities', 'rediscount_on_other_notes_payable'),
(84, 'liability', 'current', 'other_liabilities', 'other_liabilities'),
(85, 'liability', 'current', 'advances_received', ''),
(86, 'liability', 'current', 'progress_for_long-term_construction_and_repair_projects', 'progress_payments_for_long-term_construction_and_repair_projects'),
(87, 'liability', 'current', 'progress_for_long-term_construction_and_repair_projects', 'long-term_inflation_adjustment_accounts'),
(88, 'liability', 'current', 'taxes_payable_and_other_fiscal_liabilities', 'taxes_and_funds_payable'),
(89, 'liability', 'current', 'taxes_payable_and_other_fiscal_liabilities', 'social_security_withholdings_payable'),
(90, 'liability', 'current', 'taxes_payable_and_other_fiscal_liabilities', 'overdue_deferred_or_restructured_taxes_and_other_liabilities'),
(91, 'liability', 'current', 'taxes_payable_and_other_fiscal_liabilities', 'other_liabilities_payable'),
(92, 'liability', 'current', 'provisions_for_liabilities_and_expenses', 'provision_for_income_taxes_and_other_duties_on_profit'),
(93, 'liability', 'current', 'provisions_for_liabilities_and_expenses', 'prepaid_income_taxes_and_other_duties_on_profit'),
(94, 'liability', 'current', 'provisions_for_liabilities_and_expenses', 'provision_for_termination_indemnities'),
(95, 'liability', 'current', 'provisions_for_liabilities_and_expenses', 'provisions_for_other_liabilities_and_expenses'),
(96, 'liability', 'current', 'deferred_income_and_expense_accruals', 'deferred_income'),
(97, 'liability', 'current', 'deferred_income_and_expense_accruals', 'expense_accruals'),
(98, 'liability', 'current', 'other_short-term_liabilities', 'vat_payable'),
(99, 'liability', 'current', 'other_short-term_liabilities', 'other_vat'),
(100, 'liability', 'current', 'other_short-term_liabilities', 'head_office_and_branch_current_accounts'),
(101, 'liability', 'current', 'other_short-term_liabilities', 'stock_count_and_delivery_surpluses'),
(102, 'liability', 'current', 'other_short-term_liabilities', 'other_short-term_liabilities'),
(103, 'liability', 'non-current', 'financial_liabilities', 'bank_loans'),
(104, 'liability', 'non-current', 'financial_liabilities', 'leasing_payables'),
(105, 'liability', 'non-current', 'financial_liabilities', 'interest_payables_of_deferred_lease_costs'),
(106, 'liability', 'non-current', 'financial_liabilities', 'bonds_issued'),
(107, 'liability', 'non-current', 'financial_liabilities', 'other_securities_issued'),
(108, 'liability', 'non-current', 'financial_liabilities', 'value_difference_of_securities_issued'),
(109, 'liability', 'non-current', 'financial_liabilities', 'other_financial_liabilities'),
(110, 'liability', 'non-current', 'trade_payables', 'suppliers'),
(111, 'liability', 'non-current', 'trade_payables', 'notes_payable'),
(112, 'liability', 'non-current', 'trade_payables', 'rediscounts_on_notes_payable'),
(113, 'liability', 'non-current', 'trade_payables', 'deposits_and_guarantees_received'),
(114, 'liability', 'non-current', 'trade_payables', 'other_trade_payables'),
(115, 'liability', 'non-current', 'other_payables', 'due_to_shareholders'),
(116, 'liability', 'non-current', 'other_payables', 'due_to_affiliates'),
(117, 'liability', 'non-current', 'other_payables', 'due_to_subsidiaries'),
(118, 'liability', 'non-current', 'other_payables', 'rediscounts_on_other_notes_payable'),
(119, 'liability', 'non-current', 'other_payables', 'debts_to_the_public_sector_deferred_or_payable_by_installments'),
(120, 'liability', 'non-current', 'other_payables', 'other_payables'),
(121, 'liability', 'non-current', 'advances_received', ''),
(122, 'liability', 'non-current', 'provisions_for_debts_and_expenses', 'provisions_for_termination_indemnities'),
(123, 'liability', 'non-current', 'provisions_for_debts_and_expenses', 'provisions_for_other_debts_and_expenses'),
(124, 'liability', 'non-current', 'income_relating_to_future_periods_and_expense_accruals', 'income_relating_to_future_periods'),
(125, 'liability', 'non-current', 'income_relating_to_future_periods_and_expense_accruals', 'expense_accruals'),
(126, 'liability', 'non-current', 'other_long-term_liabilities', 'vat_deferred_to_following_years'),
(127, 'liability', 'non-current', 'other_long-term_liabilities', 'other_long-term_liabilities'),
(128, 'equity', '', 'paid-in_capital', 'capital'),
(129, 'equity', '', 'paid-in_capital', 'unpaid_capital'),
(130, 'equity', '', 'paid-in_capital', 'positive_distinction_from_share_capital_adjustment'),
(131, 'equity', '', 'paid-in_capital', 'negative_distinction_from_share_capital_adjustment'),
(132, 'equity', '', 'capital_reserves', 'share_premiums'),
(133, 'equity', '', 'capital_reserves', 'profit_from_invalidation_of_shares'),
(134, 'equity', '', 'capital_reserves', 'revaluation_fund_of_tangible_fixed_assets'),
(135, 'equity', '', 'capital_reserves', 'revaluation_fund_of_affiliates'),
(136, 'equity', '', 'capital_reserves', 'cost_increase_fund'),
(137, 'equity', '', 'capital_reserves', 'other_capital_reserves'),
(138, 'equity', '', 'profit_reserves', 'legal_reserves'),
(139, 'equity', '', 'profit_reserves', 'statutory_reserves'),
(140, 'equity', '', 'profit_reserves', 'extraordinary_reserves'),
(141, 'equity', '', 'profit_reserves', 'other_profit_reserves'),
(142, 'equity', '', 'profit_reserves', 'special_funds'),
(143, 'equity', '', 'previous_years_profits', ''),
(144, 'equity', '', 'previous_years_losses', ''),
(145, 'equity', '', 'profit_or_loss_for_the_period', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
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
