// ============================================================================
// Sirdata AB Consent Signals Decoder — Test Cases
// ============================================================================

const mock = require('mock');
const assertThat = require('assertThat');
const runCode = require('runCode');

// Helper: set up dataLayer mock with given purposes and extraPurposes
function setupDataLayer(purposes, extraPurposes) {
  mock('copyFromDataLayer', function(key) {
    if (key === 'sirdataPurposes') return purposes || '';
    if (key === 'sirdataExtraPurposes') return extraPurposes || '';
    return undefined;
  });
}

// Helper: run the variable template with given language and finality
function runVariable(language, finalityField, finalityValue) {
  var data = {
    language: language
  };
  data[finalityField] = finalityValue;
  return runCode(data);
}

// ============================================================================
// Test 1: Non-personalized advertising — all required purposes granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(true);

// ============================================================================
// Test 2: Non-personalized advertising — missing purpose 2
// ============================================================================
setupDataLayer('|1|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 3: Non-personalized advertising — missing purpose 1
// ============================================================================
setupDataLayer('|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 4: Personalized advertising — all required purposes granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'personalized_ads')
).isEqualTo(true);

// ============================================================================
// Test 5: Personalized advertising — missing purpose 4
// ============================================================================
setupDataLayer('|1|2|3|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 6: Audience measurement — all required purposes granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'audience_measurement')
).isEqualTo(true);

// ============================================================================
// Test 7: Audience measurement — missing purpose 8
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'audience_measurement')
).isEqualTo(false);

// ============================================================================
// Test 8: Personalized content — all required purposes granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'personalized_content')
).isEqualTo(true);

// ============================================================================
// Test 9: Personalized content — missing purpose 6
// ============================================================================
setupDataLayer('|1|2|3|4|5|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'personalized_content')
).isEqualTo(false);

// ============================================================================
// Test 10: Email pixels — extra purpose 7 granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'email_pixels')
).isEqualTo(true);

// ============================================================================
// Test 11: Email pixels — extra purpose 7 not granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|');
assertThat(
  runVariable('en', 'finality_en', 'email_pixels')
).isEqualTo(false);

// ============================================================================
// Test 12: Session replays — extra purpose 8 granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|8|');
assertThat(
  runVariable('en', 'finality_en', 'session_replays')
).isEqualTo(true);

// ============================================================================
// Test 13: Session replays — extra purpose 8 not granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'session_replays')
).isEqualTo(false);

// ============================================================================
// Test 14: Identification data — extra purposes 9 and 10 granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|9|10|');
assertThat(
  runVariable('en', 'finality_en', 'identification_data')
).isEqualTo(true);

// ============================================================================
// Test 15: Identification data — missing extra purpose 10
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|9|');
assertThat(
  runVariable('en', 'finality_en', 'identification_data')
).isEqualTo(false);

// ============================================================================
// Test 16: Cross-context ads — extra purpose 11 granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|11|');
assertThat(
  runVariable('en', 'finality_en', 'cross_context_ads')
).isEqualTo(true);

// ============================================================================
// Test 17: Cross-context ads — extra purpose 11 not granted
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'cross_context_ads')
).isEqualTo(false);

// ============================================================================
// Test 18: Empty dataLayer — should return false
// ============================================================================
setupDataLayer('', '');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 19: Undefined dataLayer values — should return false
// ============================================================================
mock('copyFromDataLayer', function(key) {
  return undefined;
});
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 20: French language selection
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('fr', 'finality_fr', 'non_personalized_ads')
).isEqualTo(true);

// ============================================================================
// Test 21: Spanish language selection
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('es', 'finality_es', 'personalized_ads')
).isEqualTo(true);

// ============================================================================
// Test 22: German language selection
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('de', 'finality_de', 'audience_measurement')
).isEqualTo(true);

// ============================================================================
// Test 23: Italian language selection
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('it', 'finality_it', 'personalized_content')
).isEqualTo(true);

// ============================================================================
// Test 24: Portuguese language selection
// ============================================================================
setupDataLayer('|1|2|3|4|5|6|7|8|9|10|', '|1|2|3|4|7|');
assertThat(
  runVariable('pt', 'finality_pt', 'email_pixels')
).isEqualTo(true);

// ============================================================================
// Test 25: Partial purposes — only purpose 1 granted
// ============================================================================
setupDataLayer('|1|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(false);

// ============================================================================
// Test 26: Partial purposes — only purposes 1 and 2 granted
// ============================================================================
setupDataLayer('|1|2|', '|1|2|3|4|7|');
assertThat(
  runVariable('en', 'finality_en', 'non_personalized_ads')
).isEqualTo(true);
assertThat(
  runVariable('en', 'finality_en', 'personalized_ads')
).isEqualTo(false);
