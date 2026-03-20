from sqlalchemy import Column, Integer, String, Boolean, DateTime, Text, ForeignKey
from .database import Base
import datetime

class User(Base):
    __tablename__ = "User"
    id = Column(Integer, primary_key=True, index=True)
    firstName = Column(String(100), nullable=False)
    lastName = Column(String(100), nullable=False)
    email = Column(String(255), unique=True, nullable=False, index=True)
    isActive = Column(Boolean, default=False)
    password = Column(String(255), nullable=False)

class Project(Base):
    __tablename__ = "Project"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(150), nullable=False)
    description = Column(Text)
    date_debut = Column(DateTime, default=datetime.datetime.utcnow)
    date_fin = Column(DateTime)

class UserRole(Base):
    __tablename__ = "UserRole"
    UserId = Column(Integer, ForeignKey("User.id", ondelete="CASCADE"), primary_key=True)
    ProjectId = Column(Integer, ForeignKey("Project.id", ondelete="CASCADE"), primary_key=True)
    RoleEnum = Column(String, nullable=False) # 'Admin', 'projectMember', 'observer'

class Task(Base):
    __tablename__ = "Task"
    id = Column(Integer, primary_key=True, index=True)
    ProjectId = Column(Integer, ForeignKey("Project.id", ondelete="CASCADE"), nullable=False)
    UserId = Column(Integer, ForeignKey("User.id", ondelete="CASCADE"), nullable=False)
    title = Column(String(255), nullable=False)
    StatusEnum = Column(String, nullable=False) # 'blocked', 'in_progress', 'cancelled', 'closed'
    PriorityEnum = Column(String, nullable=False) # 'high', 'low', 'lowest', 'highest'
    description = Column(Text, nullable=False)

class History(Base):
    __tablename__ = "History"
    id = Column(Integer, primary_key=True, index=True)
    taskId = Column(Integer, ForeignKey("Task.id", ondelete="CASCADE"), nullable=False)
    UserId = Column(Integer, ForeignKey("User.id", ondelete="CASCADE"), nullable=False)
    timestamp = Column(DateTime, default=datetime.datetime.utcnow)
