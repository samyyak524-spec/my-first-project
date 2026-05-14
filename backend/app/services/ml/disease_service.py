def detect_disease(image_bytes: bytes) -> dict:
    return {
        'disease': 'leaf_spot',
        'confidence': 0.89,
        'recommendation': {
            'fertilizer': 'NPK 19:19:19 foliar spray',
            'pesticide': 'Copper oxychloride (as per local guideline)',
            'organic': 'Neem oil spray weekly'
        }
    }
