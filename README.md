# Experiment

This project demonstrates a minimal AI powered mental health agent.

## Features

- **Webhook API**: A Flask server exposes `/webhook` for POST requests. The
  payload must include a `message` field.
- **Trait Detection**: `MentalHealthAgent` performs a simple keyword based scan
  of the message to infer potential mental health traits such as anxiety,
  depression or stress.
- **Suggestions**: Based on detected traits, the agent responds with basic
  wellbeing suggestions.
- **Notion Integration**: If `NOTION_API_TOKEN` and `NOTION_PARENT_PAGE_ID` are
  provided as environment variables, incoming messages and generated
  suggestions are stored as a page in Notion.

## Setup

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Export your Notion token and parent page ID if you want Notion integration:
   ```bash
   export NOTION_API_TOKEN="secret_xxx"
   export NOTION_PARENT_PAGE_ID="your_page_id"
   ```
3. Run the server:
   ```bash
   python app.py
   ```

Send a POST request to `http://localhost:5000/webhook` with JSON body
`{"message": "I feel very stressed about my work"}` to see the response.
