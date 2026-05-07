-- ============================================
-- Insurance Claims Analysis
-- Reporting Views for Power BI
-- ============================================

-- ============================================
-- 1. KPI SUMMARY VIEW
-- ============================================

CREATE OR REPLACE VIEW vw_kpi_summary AS

SELECT
    (SELECT COUNT(*) FROM policies) AS total_policies,

    (SELECT COUNT(*)
     FROM policies
     WHERE policy_status = 'Active') AS active_policies,

    (SELECT ROUND(SUM(premium_amount),2)
     FROM policies) AS total_revenue,

    (SELECT COUNT(*)
     FROM claims) AS total_claims,

    (SELECT ROUND(SUM(claim_amount),2)
     FROM claims) AS total_claim_amount,

    (
        SELECT ROUND(
            100.0 *
            SUM(
                CASE
                    WHEN claim_status = 'Approved'
                    THEN 1
                    ELSE 0
                END
            ) / COUNT(*),
        2)
        FROM claims
    ) AS approval_rate;


-- ============================================
-- 2. REVENUE BY POLICY TYPE
-- ============================================

CREATE OR REPLACE VIEW vw_revenue_by_policy_type AS

SELECT
    policy_type,
    ROUND(SUM(premium_amount),2) AS total_revenue

FROM policies

GROUP BY policy_type;


-- ============================================
-- 3. CLAIM ANALYSIS VIEW
-- ============================================

CREATE OR REPLACE VIEW vw_claim_analysis AS

SELECT
    p.policy_type,

    COUNT(c.claim_id) AS total_claims,

    ROUND(SUM(c.claim_amount),2) AS total_claim_amount,

    ROUND(AVG(c.claim_amount),2) AS avg_claim_amount

FROM claims c

JOIN policies p
ON c.policy_id = p.policy_id

GROUP BY p.policy_type;


-- ============================================
-- 4. MONTHLY CLAIM TREND VIEW
-- ============================================

CREATE OR REPLACE VIEW vw_monthly_claim_trend AS

SELECT
    TO_CHAR(claim_date, 'Mon') AS claim_month,

    COUNT(*) AS total_claims,

    ROUND(SUM(claim_amount),2) AS total_claim_amount

FROM claims

GROUP BY claim_month
ORDER BY MIN(claim_date);


-- ============================================
-- 5. CITY REVENUE VIEW
-- ============================================

CREATE OR REPLACE VIEW vw_city_revenue AS

SELECT
    city,

    ROUND(SUM(premium_amount),2) AS total_revenue

FROM policies

GROUP BY city;


-- ============================================
-- 6. CLAIM STATUS OVERVIEW
-- ============================================

CREATE OR REPLACE VIEW vw_claim_status_overview AS

SELECT
    claim_status,

    COUNT(*) AS total_claims

FROM claims

GROUP BY claim_status;


-- ============================================
-- 7. POLICY TYPE CLAIM DISTRIBUTION
-- ============================================

CREATE OR REPLACE VIEW vw_policy_type_claim_distribution AS

SELECT
    p.policy_type,

    COUNT(c.claim_id) AS total_claims

FROM claims c
JOIN policies p
ON c.policy_id = p.policy_id
GROUP BY p.policy_type;