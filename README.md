# Data Agent

It is a pet project, the idea is to have a cli-agent that connects with a database using RAG through MCP.

# Why

I wanted to practice what I was learning over these past year and apply on my own project and my own rules so I can explore more about the RAG world.

# How to use

The project has different components that all together represents the Data Agent.

- *Agent:* This is the cli tool that will be the user interaction, here is where we will ask questions and interact with the model
- *DB:* This covers the database schema and data for the database that we will use.
- *MCP-Server:* As the name indicate this is where the MCP lives
- *Evals:* The evaluation directory which we use for testing our system responses
- *Semantic:* Where the skills and metrics are going to live
- *Finetune:* Small LLM
- *Infra:* AWS Terraform
- *Docs:* Where we have short record 

## Requirements

- Python
- Docker
- Claude account
- Gemma and Ollama to install locally

## Install



