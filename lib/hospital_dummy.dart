class HospitalDummy {
  final Map<String, Map<String, Map<String, int>>> _hospitalData = {
    'surat': {
      'sims': {
        'icu': 41,
        'general': 42,
        'ventilator': 13,
        'children\'s ward': 21,
      },
      'apollo': {
        'icu': 14,
        'general': 14,
        'ventilator': 41,
        'children\'s ward': 41,
      },
      'apple': {
        'icu': 71,
        'general': 62,
        'ventilator': 62,
        'children\'s ward': 73,
      },
      'kiran': {
        'icu': 62,
        'general': 25,
        'ventilator': 67,
        'children\'s ward': 23,
      },
      'hcg': {
        'icu': 83,
        'general': 26,
        'ventilator': 74,
        'children\'s ward': 87,
      },
      'sterling': {
        'icu': 25,
        'general': 42,
        'ventilator': 24,
        'children\'s ward': 72,
      }
    },
    'ahmedabad': {
      'hcg': {
        'icu': 83,
        'general': 32,
        'ventilator': 72,
        'children\'s ward': 72,
      },
      'shalby': {
        'icu': 72,
        'general': 82,
        'ventilator': 43,
        'children\'s ward': 25,
      },
      'zydus': {
        'icu': 42,
        'general': 25,
        'ventilator': 72,
        'children\'s ward': 72,
      },
      'apollo': {
        'icu': 27,
        'general': 24,
        'ventilator': 46,
        'children\'s ward': 47,
      },
      'sterling': {
        'icu': 47,
        'general': 74,
        'ventilator': 34,
        'children\'s ward': 73,
      }
    },
    'rajkot': {
      'synergy': {
        'icu': 27,
        'general': 72,
        'ventilator': 12,
        'children\'s ward': 74,
      },
      'sterling': {
        'icu': 94,
        'general': 36,
        'ventilator': 24,
        'children\'s ward': 85,
      },
      'wackhardt': {
        'icu': 36,
        'general': 85,
        'ventilator': 56,
        'children\'s ward': 83,
      },
      'genesis': {
        'icu': 38,
        'general': 56,
        'ventilator': 35,
        'children\'s ward': 35,
      },
      'salus': {
        'icu': 56,
        'general': 35,
        'ventilator': 86,
        'children\'s ward': 24,
      },
      'hcg': {
        'icu': 85,
        'general': 75,
        'ventilator': 45,
        'children\'s ward': 64,
      }
    }
  };

  final String city;

  HospitalDummy(this.city);

  Map<String, Map<String, int>> get hospitals =>
      _hospitalData[city] as Map<String, Map<String, int>>;
}
