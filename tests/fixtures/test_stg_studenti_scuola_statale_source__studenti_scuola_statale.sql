unit_tests:
  - name: test_is_valid_email_address
    description: "Check my is_valid_email_address logic captures all known edge cases - emails without ., emails without @, and emails from invalid domains."
    model: stg_studenti_scuola_statale_source__studenti_scuola_statale
    given:
      - input: ref('studenti_scuola_statale')
        rows:
          - {indirizzoemailscuola: cool@istruzione.it}
          - {indirizzoemailscuola: cool@unknown.com}
          - {indirizzoemailscuola: badgmail.com}
          - {indirizzoemailscuola: missingdot@gmailcom}
    expect:
      rows:
        - {email: cool@istruzione.it,    is_valid_email_address: true}
        - {email: cool@unknown.com,    is_valid_email_address: false}
        - {email: badgmail.com,        is_valid_email_address: false}
        - {email: missingdot@gmailcom, is_valid_email_address: false}