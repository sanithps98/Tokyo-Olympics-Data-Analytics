
# Tokyo Olympics Data Analytics | Azure End-To-End Data Engineering Project 

</br>
<div align="center">
    <img src="Images/Olympics_Logo.png" alt="LOGO">
</div>

## 💻 Description
The Tokyo Olympic Data Analytics Project is a comprehensive solution for analyzing and visualizing the 2021 Tokyo Olympics data. It demonstrates how to build an end-to-end data analytics pipeline on the Azure cloud platform by integrating Azure Databricks, Azure Data Factory, and other Azure resources. 

It involves ingesting raw Olympic data, transforming it into a suitable format, performing analysis, and creating insightful visualizations. Starting with a CSV on GitHub, the data is ingested into the Azure ecosystem via Azure Data Factory. It is initially stored in Azure Data Lake Storage Gen2 and then transformed in Azure Databricks. Once again housed in ADLS Gen2, the enriched data undergoes advanced analytics in Azure Synapse. The insights are finally visualized in Azure Synapse or Power BI, offering a comprehensive dataset view.

## 🌐 Architecture 
<img src="Images/Architecture.png">

## 📊 Dataset Used 
The dataset for the Tokyo Olympics 2020 contains information about 11,000 athletes, 47 disciplines, and 743 teams, offering a comprehensive view of the event.

Source(Kaggle): [2021 Olympics in Tokyo](https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo)
</br>

## 🔨 Azure Services Used
1. **Azure Data Factory:** For data ingestion from GitHub.
2. **Azure Data Lake Storage Gen2**: As the primary data storage solution.
3. **Azure Databricks:** For data transformation tasks.
4. **Azure Synapse Analytics:** To perform in-depth data analytics.

## 🔁 Workflow 

### 1) Initial Setup
1. Create Azure Free Subscription acoount  
2. Create a Resource Group '**tokyo-olympic-data**' to house and manage all the Azure resources associated with this project. 
3. Within the created resource group,set up a storage account. This is specifically configured to leverage Azure Data Lake Storage(ADLS) Gen2 capabilities.
4. Create a Container inside this storage account to hold the project's data. Two directories '**raw-data**' and '**transformed-data**' are created to store raw data and transformed data.
  <img src="Images/storage.png"> 

### 2) Data Ingestion using Azure Data Factory
1. Begin by creating an Azure Data Factory workspace within the previously established resource group.
2. After setting up the workspace, launch the Azure Data Factory Studio. 
3. Upload the Tokyo Olympics dataset from kaggle to GitHub.
4. Within the studio, initialize a new data integration pipeline. Now use the task Copy Data to move data efficiently between various supported sources and destinations.
5. Configuring the Data Source with HTTP template as we are using http request to get the data from GitHub repo.
6. Establishing the Linked Service for source.
7. Configuring the File Format for and setting up the Linked Service Sink.
8. Repeat above steps to load all the datasets.
9. You can connect all the copy data activity together and run them all at once.
<img src="Images/datafactory_pipeline.png">  
10. After the pipeline completes its execution, navigate to your Azure Data Lake Storage Gen2. Dive into the "raw-data" folder and validate that the files, like "athletes.csv", "medals.csv", etc., are present and populated with the expected data.

<br/><img src="Images/raw_data_in_storage.png">

### 3) Data Transformation using Azure Databricks
1. Navigate to Azure Databricks within the Azure portal and create a workspace within the previously established resource group and launch it.
2. Configuring Compute in Databricks
3. Create a new notebook within Databricks and rename it appropriately, reflecting its purpose or the dataset it pertains to.
4. Establishing a Connection to Azure Data Lake Storage (ADLS)
5. Using the credentials (Client ID, Tenant ID, Secret), write the appropriate code in the Databricks notebook to mount ADLS. 
6. Writing Data Transformations mount ADLS Gen2 to Databricks.
7. Writing Transformed Data to ADLS Gen2.
 <img src="Images/transformed_data_tables.png">
  <img src="Images/transformed_data_contents.png">

• Refer to the notebook below for the transformations and code used to mount ADLS Gen2 to Databricks.

[Tokyo Olympics Transformation.ipynb](https://github.com/sanithps98/tokyo-olympic-azure-data-engineering-project/blob/main/Tokyo%20Olympic%20Transformation.ipynb)

### 4) Setting Up and Using Azure Synapse Analytics
1. Creating a Synapse Analytics Workspace.
2. Within Workspace navigate to the "Data" section , choose "Lake Database"  and create a Database "**Tokyo_DB**"
3. Creating Table from Data Lake from the Transformed Data folder within your ADLS Gen2 storage.
 <img src="Images/synapse_database_creation.png">
 
### 5) Performing Data Analysis on the Data

Create **SQL script** to Perform **Exploratory data analysis** using SQL.
You can also use PowerBI to generate your analysis reports.
</br>

</br>
<ul>
  <li><b>Query 1</b></li>
</ul>
<div align="center">
    <img src="Output/Query1.png" alt="Query1">
</div>

</br>
<ul>
  <li><b>Query 2</b></li>
</ul>
<div align="center">
    <img src="Output/Query2.jpg" alt="Query2">
</div>

</br>
<ul>
  <li><b>Query 3</b></li>
</ul>
<div align="center">
    <img src="Output/Query3.png" alt="Query3">
</div>

</br>
<ul>
  <li><b>Query 4</b></li>
</ul>
<div align="center">
    <img src="Output/Query4.png" alt="Query4">
</div>

</br>
<ul>
  <li><b>Query 5</b></li>
</ul>
<div align="center">
    <img src="Output/Query5.png" alt="Query5">
</div>

</br>
<ul>
  <li><b>Query 6</b></li>
</ul>
<div align="center">
    <img src="Output/Query6.png" alt="Query6">
</div>

</br>
<ul>
  <li><b>Query 7</b></li>
</ul>
<div align="center">
    <img src="Output/Query7.png" alt="Query7">
</div>

• Refer to the SQL scripts used for data analysis. 
[Tokyo Olympics SQL script.sql](https://github.com/sanithps98/tokyo-olympic-azure-data-engineering-project/blob/main/Tokyo%20Olympics%20SQL%20script.sql)
