from pydantic import BaseModel, ConfigDict
from typing import Optional, List
from datetime import datetime

class ProjectBase(BaseModel):
    name: str
    description: Optional[str] = None
    date_debut: Optional[datetime] = None
    date_fin: Optional[datetime] = None

class ProjectCreate(ProjectBase):
    pass

class Project(ProjectBase):
    id: int
    
    model_config = ConfigDict(from_attributes=True)

class UserBase(BaseModel):
    firstName: str
    lastName: str
    email: str
    isActive: bool = False

class UserCreate(UserBase):
    password: str

class User(UserBase):
    id: int
    
    model_config = ConfigDict(from_attributes=True)
