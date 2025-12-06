Create or REPLACE SECRET git_secret_example
type = password
USERNAME = 'kkarthikeyan80'
password = '';

CREATE OR REPLACE SECRET git_secret_example
    TYPE = password
    USERNAME = 'kkarthikeyan80'
    PASSWORD = '';

Create or replace API integration git_api_integration_example
Api_provider = git_https_api
api_allowed_prefixes = ('https://github.com/')
allowed_authentication_secrets = (git_secret_example)
enabled = true;

CREATE OR REPLACE API INTEGRATION git_api_integration_example
    API_PROVIDER = GIT_HTTPS_API
    API_ALLOWED_PREFIXES = ('https://github.com/')
    ALLOWED_AUTHENTICATION_SECRETS = (git_secret_example) -- Optional, for private repositories
    ENABLED = TRUE;