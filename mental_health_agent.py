class MentalHealthAgent:
    """Basic rule-based detector and suggestion generator."""

    def __init__(self):
        # keywords representing mental health traits
        self.traits_keywords = {
            "anxiety": ["anxious", "nervous", "worry", "panic"],
            "depression": ["sad", "down", "hopeless", "tired"],
            "stress": ["stress", "overwhelmed", "pressure", "burnout"],
        }
        self.suggestions = {
            "anxiety": (
                "Try deep breathing exercises or mindfulness meditation."
            ),
            "depression": (
                "Consider talking to a trusted friend or professional "
                "therapist."
            ),
            "stress": (
                "Take short breaks during work and practice relaxation "
                "techniques."
            ),
        }

    def detect_traits(self, text: str):
        traits = []
        text_lower = text.lower()
        for trait, keywords in self.traits_keywords.items():
            for kw in keywords:
                if kw in text_lower:
                    traits.append(trait)
                    break
        return traits

    def get_suggestions(self, traits):
        if not traits:
            return [
                "Keep monitoring your mental well-being and stay positive!"
            ]
        return [
            self.suggestions[trait]
            for trait in traits
            if trait in self.suggestions
        ]
