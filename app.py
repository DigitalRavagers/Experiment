from flask import Flask, request, jsonify
from mental_health_agent import MentalHealthAgent
import notion_client_util as notion_util
import os

app = Flask(__name__)
agent = MentalHealthAgent()


@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.get_json(force=True)
    if not data or 'message' not in data:
        return jsonify({'error': 'message field required'}), 400

    message = data['message']
    traits = agent.detect_traits(message)
    suggestions = agent.get_suggestions(traits)

    # optionally create a page in Notion
    parent_page_id = os.environ.get('NOTION_PARENT_PAGE_ID')
    notion_response = None
    if parent_page_id:
        try:
            notion_response = notion_util.create_page(
                title='Mental Health Entry',
                content=(
                    message
                    + '\n\nSuggestions:\n'
                    + '\n'.join(suggestions)
                ),
                parent_page_id=parent_page_id,
            )
        except Exception as e:
            notion_response = {'error': str(e)}

    return jsonify({
        'traits': traits,
        'suggestions': suggestions,
        'notion': notion_response,
    })


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
