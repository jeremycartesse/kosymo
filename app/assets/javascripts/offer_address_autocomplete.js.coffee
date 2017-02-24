jQuery ->

  completer = new GmapsCompleter
    inputField: '#offer_address'
    errorField: '#gmaps-error'


  completer.autoCompleteInit
    country: "fr"


