
from functools import lru_cache
from backend.config import Settings


@lru_cache()
def get_settings():
    return Settings()

