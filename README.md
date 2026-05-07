# Insurance Claims Analysis (SQL & POWER BI)

## Project Overview

This project analyzes insurance policy performance and claims activity using PostgreSQL and Power BI.  
The focus is on understanding premium revenue, claim behavior, policy distribution, and approval trends across different insurance categories and cities.

The analysis helps identify:
- High-performing insurance categories
- Claim trends and approval patterns
- Revenue contribution by city
- Risk-related customer behavior

The goal of this project is to help insurance companies:
- Monitor policy and claims performance
- Track premium revenue trends
- Improve claim approval efficiency
- Identify high-risk business segments
- Support data-driven business decisions

---

## Problem Statement

Insurance companies manage thousands of policies and claims across multiple categories and cities. Without proper analysis, it becomes difficult to monitor revenue performance, identify claim patterns, and evaluate operational efficiency.

This project answers the following questions:

- Which policy types generate the highest premium revenue?
- Which insurance categories receive the most claims?
- What is the claim approval rate?
- Which cities contribute the highest revenue?
- How do claim amounts trend over time?
- Which policy types are riskier based on claim activity?

---

## Tools Used

- PostgreSQL – Database creation, SQL analysis, and reporting views
- Power BI – Data modeling, DAX measures, and dashboard development

---

## Dataset

The dataset is a synthetically generated but realistic insurance dataset created for portfolio and educational purposes.

Main tables:
- Policies – customer and policy information
- Claims – claim transaction records


## Database Design

A relational database structure was created using PostgreSQL.

Relationship:
- One Policy → Many Claims

The project follows a reporting workflow:

CSV Files → PostgreSQL → SQL Reporting Views → Power BI Dashboard

---

## Key Analysis Steps

### 1. Data Generation & Preparation

- Generated realistic insurance policy and claims data
- Applied logical business rules for premium and claim behavior
- Ensured relational integrity between tables
- Maintained proper date formatting and clean categorical values

---

### 2. SQL Analysis

Performed business analysis using SQL:
- Revenue analysis by policy type and city
- Claims analysis and approval tracking
- Monthly trend analysis
- Risk and claim distribution analysis
- Advanced SQL using CTEs and window functions

---

### 3. Reporting Views

Created SQL reporting views for Power BI:
- vw_kpi_summary
- vw_revenue_by_policy_type
- vw_claim_analysis
- vw_monthly_claim_trend
- vw_city_revenue
- vw_claim_status_overview
- vw_policy_type_claim_distribution

These views simplified dashboard development and followed a professional BI workflow.

---

### 4. Data Modeling (Power BI)

- Connected PostgreSQL to Power BI
- Built relationships between policies and claims tables
- Created dashboard-ready reporting structure

---

### 5. DAX Measures

Key metrics created using DAX:
- Total Policies
- Active Policies
- Premium Revenue
- Total Claims
- Claim Approval Rate

---

## Dashboard Metrics

The dashboard includes:
- Total Policies
- Active Policies
- Premium Revenue
- Total Claims
- Claim Approval Rate

---

## Dashboard Insights

Key insights from the analysis:

- Life insurance policies generated the highest premium revenue.
- Health and Vehicle insurance categories recorded the highest number of claims.
- Claim approval rate remained around 72%, indicating stable operational performance.
- Mumbai generated the highest premium revenue among all cities.
- Claim activity showed realistic monthly fluctuations over time.

---

## Business Recommendations

Based on the analysis:

- Focus on high-performing insurance categories such as Life Insurance.
- Monitor Health and Vehicle claims closely due to higher claim frequency.
- Improve claim processing efficiency to maintain approval performance.
- Increase business expansion efforts in high-revenue cities.
- Use claim trend monitoring for better operational planning.

---

## Project Outcome

This project demonstrates an end-to-end business intelligence workflow using SQL and Power BI.

The project showcases:
- Relational database design
- SQL business analysis
- Reporting layer creation
- Power BI dashboard development
- Business-focused KPI analysis

The dashboard enables insurance companies to monitor policy performance, analyze claims activity, and support data-driven decision-making
