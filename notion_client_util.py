import os
from notion_client import Client


def get_notion_client():
    token = os.environ.get("NOTION_API_TOKEN")
    if not token:
        raise ValueError("NOTION_API_TOKEN environment variable is required")
    return Client(auth=token)


def create_page(title: str, content: str, parent_page_id: str):
    """Create a simple Notion page under given parent."""
    notion = get_notion_client()
    return notion.pages.create(
        parent={"page_id": parent_page_id},
        properties={
            "title": [
                {
                    "text": {"content": title}
                }
            ]
        },
        children=[
            {
                "object": "block",
                "type": "paragraph",
                "paragraph": {
                    "rich_text": [{"text": {"content": content}}]
                },
            }
        ],
    )
