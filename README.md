# dbt-cop-snowflake
Hello, and welcome to the dbt CoP-sponsored learning repository. This repo highlights the power of dbt and Snowflake working together to enable streamlined data transformation.

## Getting Started

### Prerequisites
- Python 3.7 or higher
- Virtual environment tool (e.g., `venv` or `virtualenv`)
- dbt (data build tool)
- Snowflake account

### Steps

1. **Clone the Repository**
    ```sh
    git clone https://github.com/yourusername/dbt-cop-snowflake.git
    cd dbt-cop-snowflake
    ```

2. **Create and Activate a Virtual Environment**
    ```sh
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Install dbt and Other Dependencies**
    ```sh
    pip install dbt
    pip install -r requirements.txt  # If you have additional dependencies listed in a requirements file
    ```

4. **Configure dbt**
    - Create a `profiles.yml` file in the `~/.dbt/` directory (create the directory if it doesn't exist).
    - Add the following configuration to the `profiles.yml` file:
        ```yaml
        dbt_cop_snowflake:
          outputs:
            dev:
              account: OCMUXFQ-CAPTECH_PARTNER
              database: DBT_COP_LEARNING
              schema: START_HERE
              user: {your user name}
              authenticator: externalbrowser
              warehouse: XS_WH
              role: APG_SNOWFLAKE_USERS
              threads: 1
              type: snowflake
          target: dev
        ```
    - Test your connection:
        ```sh
        dbt debug
        ```
    - Install dependencies:
        ```sh
        dbt deps
        ```

5. **Run dbt Operations**
    - **Build all models**
        ```sh
        dbt build
        ```
    - **Test the models**
        ```sh
        dbt test
        ```
    - **Generate documentation**
        ```sh
        dbt docs generate
        ```
    - **Serve the documentation**
        ```sh
        dbt docs serve
        ```

### Resources:

