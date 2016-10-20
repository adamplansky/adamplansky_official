$ ->
  $('form').on 'click', '#count', (e)->
    e.preventDefault()
    _from =  parseFloat $('#from').val()
    _to =  parseFloat $('#to').val()
    _rep =  (parseFloat $('#repetition').val())-1
    res = (_to - _from) / _rep
    arr = []
    arr.push _from.toFixed(1)
    for i in [0..._rep]
      _from += res
      arr.push _from.toFixed(1)

    $('#results #weight').text(res.toFixed(1))

    aryPrint = ''
    aryPrint += '<span>' + arr[i] + '</span>, ' for i in [0...arr.length-1]
    aryPrint += '<span>' + arr[arr.length-1] + '</span>'

    $('#results #weights').html(aryPrint)
    return
