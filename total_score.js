

    function score(){
        var korean = document.querySelector('.korean'),
            english = document.querySelector('.english'),
            math = document.querySelector('.math'),
            total = document.querySelector('.total'),
            result = document.querySelector('.result');
        
            total.value = parseInt(korean.value) + parseInt(english.value) + parseInt(math.value);

        if(total.value >= 250){
          result.value = '합격';
        }
        else {
          result.value = '불합격';
        }
      }