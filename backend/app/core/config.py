from pydantic_settings import BaseSettings, SettingsConfigDict

class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_file='.env', extra='ignore')
    api_v1_prefix: str = '/api/v1'
    openai_api_key: str = ''
    gemini_api_key: str = ''
    postgres_dsn: str = 'postgresql://postgres:postgres@db:5432/krishimitra'
    openweather_key: str = ''

settings = Settings()
