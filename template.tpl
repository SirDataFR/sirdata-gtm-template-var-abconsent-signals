___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_sirdata_abconsent_signals",
  "version": 1,
  "securityGroups": [],
  "displayName": "Sirdata AB Consent Signals Decoder",
  "categories": [
    "CONSENT",
    "UTILITY"
  ],
  "description": "Decodes Sirdata AB Consent CMP signals from the dataLayer and returns true/false for a selected consent finality.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "displayName": "Language",
    "name": "language",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "en",
        "displayValue": "English"
      },
      {
        "value": "fr",
        "displayValue": "Français"
      },
      {
        "value": "es",
        "displayValue": "Español"
      },
      {
        "value": "de",
        "displayValue": "Deutsch"
      },
      {
        "value": "it",
        "displayValue": "Italiano"
      },
      {
        "value": "pt",
        "displayValue": "Português"
      }
    ],
    "defaultValue": "en",
    "simpleValueType": true,
    "help": "Select the language for field labels and descriptions."
  },
  {
    "displayName": "Consent Finality (EN)",
    "name": "finality_en",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Non-personalized advertising"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Personalized advertising"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Audience measurement"
      },
      {
        "value": "personalized_content",
        "displayValue": "Personalized content"
      },
      {
        "value": "email_pixels",
        "displayValue": "Email pixels"
      },
      {
        "value": "session_games",
        "displayValue": "Session games"
      },
      {
        "value": "identification_data",
        "displayValue": "Automatic identification data collection"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Cross-context transfers for personalized digital advertising"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Select the consent finality to check.\\n\\nDefinitions:\\n- Non-personalized advertising: Requires TCF Purposes 1 and 2\\n- Personalized advertising: Requires TCF Purposes 1, 3, and 4\\n- Audience measurement: Requires TCF Purposes 1 and 8\\n- Personalized content: Requires TCF Purposes 1, 5, and 6\\n- Email pixels: Requires Extra Purpose 7\\n- Session games: Requires Extra Purpose 8\\n- Automatic identification data collection: Requires Extra Purposes 9 and 10\\n- Cross-context transfers for personalized digital advertising: Requires Extra Purpose 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "en",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Consent Finality (FR)",
    "name": "finality_fr",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Publicité non personnalisée"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Publicité personnalisée"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Mesure d'audience"
      },
      {
        "value": "personalized_content",
        "displayValue": "Contenu personnalisé"
      },
      {
        "value": "email_pixels",
        "displayValue": "Pixels dans les emails"
      },
      {
        "value": "session_games",
        "displayValue": "Jeux de sessions"
      },
      {
        "value": "identification_data",
        "displayValue": "Collecte automatique de données d'identification"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Transferts cross-contextes pour publicité digitale personnalisée"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Sélectionnez la finalité du consentement à vérifier.\\n\\nDéfinitions :\\n- Publicité non personnalisée : Nécessite les Purposes TCF 1 et 2\\n- Publicité personnalisée : Nécessite les Purposes TCF 1, 3 et 4\\n- Mesure d'audience : Nécessite les Purposes TCF 1 et 8\\n- Contenu personnalisé : Nécessite les Purposes TCF 1, 5 et 6\\n- Pixels dans les emails : Nécessite l'Extra Purpose 7\\n- Jeux de sessions : Nécessite l'Extra Purpose 8\\n- Collecte automatique de données d'identification : Nécessite les Extra Purposes 9 et 10\\n- Transferts cross-contextes pour publicité digitale personnalisée : Nécessite l'Extra Purpose 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "fr",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Consent Finality (ES)",
    "name": "finality_es",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Publicidad no personalizada"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Publicidad personalizada"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Medición de audiencia"
      },
      {
        "value": "personalized_content",
        "displayValue": "Contenido personalizado"
      },
      {
        "value": "email_pixels",
        "displayValue": "Píxeles en correos electrónicos"
      },
      {
        "value": "session_games",
        "displayValue": "Juegos de sesión"
      },
      {
        "value": "identification_data",
        "displayValue": "Recopilación automática de datos de identificación"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Transferencias entre contextos para publicidad digital personalizada"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Seleccione la finalidad del consentimiento a verificar.\\n\\nDefiniciones:\\n- Publicidad no personalizada: Requiere Propósitos TCF 1 y 2\\n- Publicidad personalizada: Requiere Propósitos TCF 1, 3 y 4\\n- Medición de audiencia: Requiere Propósitos TCF 1 y 8\\n- Contenido personalizado: Requiere Propósitos TCF 1, 5 y 6\\n- Píxeles en correos electrónicos: Requiere Propósito Extra 7\\n- Juegos de sesión: Requiere Propósito Extra 8\\n- Recopilación automática de datos de identificación: Requiere Propósitos Extra 9 y 10\\n- Transferencias entre contextos para publicidad digital personalizada: Requiere Propósito Extra 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "es",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Consent Finality (DE)",
    "name": "finality_de",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Nicht-personalisierte Werbung"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Personalisierte Werbung"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Reichweitenmessung"
      },
      {
        "value": "personalized_content",
        "displayValue": "Personalisierte Inhalte"
      },
      {
        "value": "email_pixels",
        "displayValue": "Pixel in E-Mails"
      },
      {
        "value": "session_games",
        "displayValue": "Sitzungsspiele"
      },
      {
        "value": "identification_data",
        "displayValue": "Automatische Erfassung von Identifikationsdaten"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Kontextübergreifende Übertragungen für personalisierte digitale Werbung"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Wählen Sie die Einwilligungsfinalität zur Prüfung.\\n\\nDefinitionen:\\n- Nicht-personalisierte Werbung: Erfordert TCF-Zwecke 1 und 2\\n- Personalisierte Werbung: Erfordert TCF-Zwecke 1, 3 und 4\\n- Reichweitenmessung: Erfordert TCF-Zwecke 1 und 8\\n- Personalisierte Inhalte: Erfordert TCF-Zwecke 1, 5 und 6\\n- Pixel in E-Mails: Erfordert Extra-Zweck 7\\n- Sitzungsspiele: Erfordert Extra-Zweck 8\\n- Automatische Erfassung von Identifikationsdaten: Erfordert Extra-Zwecke 9 und 10\\n- Kontextübergreifende Übertragungen für personalisierte digitale Werbung: Erfordert Extra-Zweck 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "de",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Consent Finality (IT)",
    "name": "finality_it",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Pubblicità non personalizzata"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Pubblicità personalizzata"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Misurazione dell'audience"
      },
      {
        "value": "personalized_content",
        "displayValue": "Contenuti personalizzati"
      },
      {
        "value": "email_pixels",
        "displayValue": "Pixel nelle email"
      },
      {
        "value": "session_games",
        "displayValue": "Giochi di sessione"
      },
      {
        "value": "identification_data",
        "displayValue": "Raccolta automatica di dati di identificazione"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Trasferimenti cross-context per pubblicità digitale personalizzata"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Selezionare la finalità del consenso da verificare.\\n\\nDefinizioni:\\n- Pubblicità non personalizzata: Richiede Purpose TCF 1 e 2\\n- Pubblicità personalizzata: Richiede Purpose TCF 1, 3 e 4\\n- Misurazione dell'audience: Richiede Purpose TCF 1 e 8\\n- Contenuti personalizzati: Richiede Purpose TCF 1, 5 e 6\\n- Pixel nelle email: Richiede Extra Purpose 7\\n- Giochi di sessione: Richiede Extra Purpose 8\\n- Raccolta automatica di dati di identificazione: Richiede Extra Purpose 9 e 10\\n- Trasferimenti cross-context per pubblicità digitale personalizzata: Richiede Extra Purpose 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "it",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Consent Finality (PT)",
    "name": "finality_pt",
    "type": "SELECT",
    "selectItems": [
      {
        "value": "non_personalized_ads",
        "displayValue": "Publicidade não personalizada"
      },
      {
        "value": "personalized_ads",
        "displayValue": "Publicidade personalizada"
      },
      {
        "value": "audience_measurement",
        "displayValue": "Medição de audiência"
      },
      {
        "value": "personalized_content",
        "displayValue": "Conteúdo personalizado"
      },
      {
        "value": "email_pixels",
        "displayValue": "Pixels em emails"
      },
      {
        "value": "session_games",
        "displayValue": "Jogos de sessão"
      },
      {
        "value": "identification_data",
        "displayValue": "Coleta automática de dados de identificação"
      },
      {
        "value": "cross_context_ads",
        "displayValue": "Transferências entre contextos para publicidade digital personalizada"
      }
    ],
    "defaultValue": "non_personalized_ads",
    "simpleValueType": true,
    "help": "Selecione a finalidade do consentimento a verificar.\\n\\nDefinições:\\n- Publicidade não personalizada: Requer Propósitos TCF 1 e 2\\n- Publicidade personalizada: Requer Propósitos TCF 1, 3 e 4\\n- Medição de audiência: Requer Propósitos TCF 1 e 8\\n- Conteúdo personalizado: Requer Propósitos TCF 1, 5 e 6\\n- Pixels em emails: Requer Propósito Extra 7\\n- Jogos de sessão: Requer Propósito Extra 8\\n- Coleta automática de dados de identificação: Requer Propósitos Extra 9 e 10\\n- Transferências entre contextos para publicidade digital personalizada: Requer Propósito Extra 11",
    "enablingConditions": [
      {
        "paramName": "language",
        "paramValue": "pt",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require('copyFromDataLayer');

const language = data.language || 'en';

let finality = '';
if (language === 'en') {
  finality = data.finality_en;
} else if (language === 'fr') {
  finality = data.finality_fr;
} else if (language === 'es') {
  finality = data.finality_es;
} else if (language === 'de') {
  finality = data.finality_de;
} else if (language === 'it') {
  finality = data.finality_it;
} else if (language === 'pt') {
  finality = data.finality_pt;
}

if (!finality) {
  finality = data.finality_en || 'non_personalized_ads';
}

const sirdataPurposes = copyFromDataLayer('sirdataPurposes') || '';
const sirdataExtraPurposes = copyFromDataLayer('sirdataExtraPurposes') || '';

function hasPurpose(purposesStr, purposeNum) {
  return purposesStr.indexOf('|' + purposeNum + '|') !== -1;
}

function hasAllPurposes(purposesStr, purposeNums) {
  for (let i = 0; i < purposeNums.length; i++) {
    if (!hasPurpose(purposesStr, purposeNums[i])) {
      return false;
    }
  }
  return true;
}

let result = false;

switch (finality) {
  case 'non_personalized_ads':
    result = hasAllPurposes(sirdataPurposes, [1, 2]);
    break;
  case 'personalized_ads':
    result = hasAllPurposes(sirdataPurposes, [1, 3, 4]);
    break;
  case 'audience_measurement':
    result = hasAllPurposes(sirdataPurposes, [1, 8]);
    break;
  case 'personalized_content':
    result = hasAllPurposes(sirdataPurposes, [1, 5, 6]);
    break;
  case 'email_pixels':
    result = hasPurpose(sirdataExtraPurposes, 7);
    break;
  case 'session_games':
    result = hasPurpose(sirdataExtraPurposes, 8);
    break;
  case 'identification_data':
    result = hasAllPurposes(sirdataExtraPurposes, [9, 10]);
    break;
  case 'cross_context_ads':
    result = hasPurpose(sirdataExtraPurposes, 11);
    break;
  default:
    result = false;
}

return result;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "sirdataPurposes"
              },
              {
                "type": 1,
                "string": "sirdataExtraPurposes"
              }
            ]
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Non-personalized ads - all required purposes granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'non_personalized_ads'})).isEqualTo(true);

- name: Non-personalized ads - missing purpose 2
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'non_personalized_ads'})).isEqualTo(false);

- name: Personalized ads - all required purposes granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'personalized_ads'})).isEqualTo(true);

- name: Personalized ads - missing purpose 4
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'personalized_ads'})).isEqualTo(false);

- name: Audience measurement - all required purposes granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'audience_measurement'})).isEqualTo(true);

- name: Audience measurement - missing purpose 8
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'audience_measurement'})).isEqualTo(false);

- name: Personalized content - all required purposes granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'personalized_content'})).isEqualTo(true);

- name: Personalized content - missing purpose 6
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'personalized_content'})).isEqualTo(false);

- name: Email pixels - extra purpose 7 granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'email_pixels'})).isEqualTo(true);

- name: Email pixels - extra purpose 7 not granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'email_pixels'})).isEqualTo(false);

- name: Session games - extra purpose 8 granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|8|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'session_games'})).isEqualTo(true);

- name: Session games - extra purpose 8 not granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'session_games'})).isEqualTo(false);

- name: Identification data - extra purposes 9 and 10 granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|9|10|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'identification_data'})).isEqualTo(true);

- name: Identification data - missing extra purpose 10
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|9|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'identification_data'})).isEqualTo(false);

- name: Cross-context ads - extra purpose 11 granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|11|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'cross_context_ads'})).isEqualTo(true);

- name: Cross-context ads - extra purpose 11 not granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'cross_context_ads'})).isEqualTo(false);

- name: Empty dataLayer - should return false
  code: |
    mock('copyFromDataLayer', function(key) {
      return '';
    });
    assertThat(runCode({language: 'en', finality_en: 'non_personalized_ads'})).isEqualTo(false);

- name: Undefined dataLayer values - should return false
  code: |
    mock('copyFromDataLayer', function(key) {
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'non_personalized_ads'})).isEqualTo(false);

- name: French language selection
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'fr', finality_fr: 'non_personalized_ads'})).isEqualTo(true);

- name: Spanish language selection
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'es', finality_es: 'personalized_ads'})).isEqualTo(true);

- name: German language selection
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'de', finality_de: 'audience_measurement'})).isEqualTo(true);

- name: Italian language selection
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'it', finality_it: 'personalized_content'})).isEqualTo(true);

- name: Portuguese language selection
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|3|4|5|6|7|8|9|10|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'pt', finality_pt: 'email_pixels'})).isEqualTo(true);

- name: Partial purposes - only 1 and 2 granted
  code: |
    mock('copyFromDataLayer', function(key) {
      if (key === 'sirdataPurposes') return '|1|2|';
      if (key === 'sirdataExtraPurposes') return '|1|2|3|4|7|';
      return undefined;
    });
    assertThat(runCode({language: 'en', finality_en: 'non_personalized_ads'})).isEqualTo(true);
    assertThat(runCode({language: 'en', finality_en: 'personalized_ads'})).isEqualTo(false);



___NOTES___

Created on 2026-06-22
