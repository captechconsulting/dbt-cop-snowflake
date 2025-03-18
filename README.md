# dbt-cop-snowflake
Hello, and welcome to the dbt CoP-sponsored learning repository. This repo highlights the power of dbt and Snowflake working together to enable streamlined data transformation.

## Getting Started

In order to successfully run these dbt models, we will need to 
![alt text](resources/snowflake_login.png)
### Prerequisites
- Python 3.11 or higher
- Virtual environment tool (e.g., `venv` or `virtualenv`)
- dbt
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
    pip install -r requirements.txt
    ```

4. **Configure dbt**
    - Create a `profiles.yml` file in the `~/.dbt/` directory (create the directory if it doesn't exist). Alternatively, you can attempt to run a dbt command in the repository - if you don't have a profile file, you will be prompted in the command line to populate all of your information. If you choose the latter option, ensure you use the same values as denoted below.
    - Add the following configuration to the `profiles.yml` file:
        ```yaml
        dbt_cop_snowflake:
          outputs:
            dev:
              account: OCMUXFQ-CAPTECH_PARTNER # our Snowflake account
              database: DBT_COP_LEARNING
              schema: START_HERE
              user: {your user name}
              authenticator: externalbrowser # this lets us use SSO for authentication with Snowflake
              warehouse: XS_WH # default warehouse, should be plenty of compute and keeps costs low
              role: APG_SNOWFLAKE_USERS # role accessible to us as non-admins
              threads: 2 # enables multithreading
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

