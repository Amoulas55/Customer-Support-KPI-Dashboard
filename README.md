# Customer Support KPI Dashboard

This project showcases a complete data analysis workflow for evaluating customer support performance using **Google BigQuery** for data processing and **Tableau Cloud** for visualization. The goal of this project was to design, implement, and visualize **Key Performance Indicators (KPIs)** that help assess support efficiency, service quality, and SLA compliance across multiple communication channels.

---

## 🎯 Project Overview

In this project, I designed and implemented a full analytical pipeline for a fictional customer support system. The workflow began in **BigQuery**, where I:

* Cleaned and validated the source dataset (customer support tickets).
* Created SQL scripts to compute the five major KPIs.
* Ensured data accuracy and consistency (e.g., valid satisfaction ratings, date checks).

I then connected **Tableau Cloud** to my BigQuery dataset, imported the KPI views, and designed insightful visualizations for each KPI.

Each visualization focuses on clarity, comparison, and interpretability, allowing quick insights into performance trends across ticket priorities and communication channels.

---

## 📊 KPIs Implemented

### **KPI 1: Average Resolution Time by Priority**

* Measures how long (in hours) it takes to resolve tickets based on their priority (Critical, High, Medium, Low).
* Helps identify where support teams may need additional resources or optimization.
* Visualized in Tableau as a **horizontal bar chart** for quick comparison.

### **KPI 2: Average Time from First Response to Resolution by Channel**

* Calculates the time between the first customer response and final resolution across different channels (Chat, Email, Phone, Social Media).
* Useful for understanding which channels handle tickets most efficiently.
* Visualized as a **horizontal bar chart** with colors indicating relative performance.

### **KPI 3: Ticket Volume by Status and Priority**

* Shows how many tickets are Open, Closed, or Pending, grouped by Priority.
* This helps monitor workload distribution and response times per priority.
* Visualized as a **heatmap table** with color-coded cells for quick identification of high-volume areas.

### **KPI 4: Average Customer Satisfaction (CSAT) by Channel**

* Computes the average satisfaction rating (1–5) for each communication channel.
* Provides insights into customer experience per channel.
* Visualized as a **colored bar chart**, with higher CSAT values highlighted in green.

### **KPI 5: SLA Compliance and Breach Rate by Priority**

* Calculates the percentage of tickets resolved within or beyond predefined SLA thresholds.
* Helps track adherence to service commitments.
* Visualized as **dual bars per priority** (green for SLA met, orange for SLA breached) to clearly contrast performance.

---

## 🧹 Data Validation Queries

Before KPI calculation, I performed several data quality checks using SQL in BigQuery:

* **Identify incomplete or empty descriptions:** Ensures no tickets lack required information.
* **Ensure satisfaction ratings are within 1–5:** Validates the rating scale integrity.
* **Check presence of date/time fields:** Confirms that key timestamps exist for each ticket.
* **Correlation between ticket status and missing resolution/satisfaction:** Detects potential data bias.
* **Count unique values for categorical columns:** Ensures consistency across labels (e.g., Channel, Status, Priority).

These checks guaranteed clean, reliable data before any visualization or metric computation.

---

## ⚙️ Tools and Technologies Used

| Tool                | Purpose                                                                           |
| ------------------- | --------------------------------------------------------------------------------- |
| **Google BigQuery** | Data warehouse used to run SQL queries, clean data, and generate KPI views.       |
| **Tableau Cloud**   | Visualization tool used to connect to BigQuery and design interactive dashboards. |
| **SQL**             | Used for data manipulation, aggregation, and KPI computation.                     |
| **GitHub**          | Version control and public portfolio for sharing this project.                    |

---

## 💡 Key Insights Discovered

* **Chat** had the highest average satisfaction (3.08/5), indicating strong performance in real-time support.
* **Critical** tickets showed the lowest SLA compliance rates, highlighting the need for faster response allocation.
* **Email** and **Social Media** channels had longer average times from first response to resolution, suggesting process improvement opportunities.
* Overall, **Medium and Low priority** tickets showed the best compliance and lowest breach rates.

---

## 🧠 Lessons Learned

This project demonstrated how data engineering and visualization can work together to deliver business insights. Key learning points include:

* The importance of cleaning and validating data before visualization.
* The efficiency of using BigQuery SQL for KPI computation.
* How to connect BigQuery datasets to Tableau for live updates.
* The impact of design choices (color, spacing, axis limits) on data storytelling.

---

## 🚀 How to Recreate This Project

1. Upload your customer support dataset into **Google BigQuery**.
2. Run the SQL scripts to generate KPI tables.
3. Connect **Tableau Cloud** to your BigQuery dataset.
4. Import each KPI view and create corresponding visualizations.
5. Format each dashboard page consistently (titles, colors, fonts, tooltips).
6. Publish the Tableau workbook and export visuals for presentation.

---

## 🧾 Credits

Created by **Angelos Moulas**
**Technologies:** Google BigQuery, Tableau Cloud, SQL, GitHub
**Year:** 2025
