/**
 * 
 */

/*영화좌석*/
    document.addEventListener( "DOMContentLoaded", init );

    var seatsPerRow = 6;
    var alphabets = 'abcdefghijklmnopqrstuvxyz'.toUpperCase().split('');

    function init(){
      console.clear();
      console.log( "Init..." );
      on( "click", select("[id^=seat]"), updateSelected );
      on( "click", select("#clearAllButton"), unselectAll );
    }

    function unselectAll(){
      select("[id^=seat]:checked").forEach(el=>el.checked=false);
      updateSelected();
    }

    function select( selector ){
      return [].map.call( document.querySelectorAll(selector), i=>i);
    }

    function on( event, targets, call ){
      if( event && Array.isArray( targets ) && typeof call === "function" ){
        targets.forEach(target=>{
          if( target.addEventListener ){
            target.addEventListener( event, call );
          }
        });
      }
    }

    function updateSelected(){
      var selected = document.querySelector("#selected");
      selected.innerHTML = "좌석 " + mapToRows( getSelectedSeats() ).join(", ");
    }

    function mapToRows( selectedSeats ){
      return selectedSeats.map( n =>{
        var rowNumber = n %seatsPerRow;
        var row = (n-rowNumber)/seatsPerRow;
        console.log(rowNumber); 
        if(rowNumber==0) {
        	rowNumber = 6;
        	return alphabets[row-1]+"-"+rowNumber;
        }else{
        	return alphabets[row]+"-"+rowNumber;
        }
        
      });
    }

    function getCheckedSeats(){
      return [].map.call( document.querySelectorAll("[id^=seat]:checked"), i=>i);
    }

    function getSelectedSeats(){
      return getCheckedSeats().map(i=>i.id.replace("seat-",""));
    }
    
    
    
    
    