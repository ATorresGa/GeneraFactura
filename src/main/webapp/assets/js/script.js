$(document).ready(function(){//se espera a que la pagina esté cargada
    var form=document.getElementById("formulario-factura"); //se almacena el formulario en una variable
    form.addEventListener("submit",validarDatos) //se agrega un evento al formulario
    var limpiar=document.getElementById("btn-limpiar") // se almacena el boton en una variable
    limpiar.addEventListener("click",limpiar) // se agrega un evento al boton limpiar
    alert("aaaa")
})
var Fn = {
    // Valida el rut con su cadena completa "XXXXXXXX-X"
    validaRut : function (rutCompleto) {
      rutCompleto = rutCompleto.replace("‐","-");
      if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
        return false;
      var tmp   = rutCompleto.split('-');
      var digv  = tmp[1]; 
      var rut   = tmp[0];
      if ( digv == 'K' ) digv = 'k' ;
      
      return (Fn.dv(rut) == digv );
    },
    dv : function(T){
      var M=0,S=1;
      for(;T;T=Math.floor(T/10))
        S=(S+T%10*(9-M++%6))%11;
      return S?S-1:'k';
    }
  }
  
  
  function metodoValidador(){
    if (Fn.validaRut( $("#rut").val() )){
      document.querySelector("#rrut").style.visibility="hidden"
      return true //retorna verdadero para vailidar el formulario
    } else {
        alert("Ingresa un rut valido o agrega el guion")
      document.querySelector("#rrut").style.visibility="visible"
      return false //retorna falso para señalar al usuario que aun no esta el formulario completo
    }
  };
function validarDatos(event){
    let validador=true;
    let patron= /^[A-za-z\s]+$/gim; // datos para el patron de letras
    let patronDireccion= /^[A-za-z1-9\s]+$/gim; //patron direcciones
    let patronCantidades=/^[0-9]+$/gim; // patron para las cantidades 
    let nombre=document.getElementById("nombre").value //se capturan las variables
    let empresa=document.getElementById("empresa").value
    let direccion= document.getElementById("direccion").value
    let ciudad= document.getElementById("ciudad").value
    let pais= document.getElementById("pais").value
    let cvt=document.getElementById("valvulas-titanio").value
    let tfc=document.getElementById("turbo-carrera").value
    let kfc=document.getElementById("kit-freno").value
    let sr=document.getElementById("sistema-refrigeracion").value
    let plumillas=document.getElementById("plumillas").value//fin de capturas
    //validacion de datos con los patrones
    if(nombre.match(patron)){
         document.querySelector("#rnom").style.visibility="hidden"//se quita en el caso de que el valor sea correcto//se setea en true la varieable para validar el formulario y hacer el submmit
    }else{
        document.querySelector("#rnom").style.visibility="visible"//se hace visible un * para indicar donde esta el error
        event.preventDefault();
        alert("Ingrese una nombre correcto solo con letras y espacios")
    }
    if(empresa.match(patron)){
        document.querySelector("#remp").style.visibility="hidden"
    }else{
        document.querySelector("#remp").style.visibility="visible"
        event.preventDefault();
        alert("Ingrese una nombre de empresa correcto solo con letras y espacios")
    }
    validador=metodoValidador()//validacion del rut
    if(validador==false){
        event.preventDefault();
    }
    //fin de validacion de datos
    if(direccion.match(patronDireccion)){
        document.querySelector("#rdir").style.visibility="hidden"
    }else{
        document.querySelector("#rdir").style.visibility="visible"
        event.preventDefault();
        alert("Ingrese una direccion correcta con letras y numeros sin caracteres especiales")
    }
    if(ciudad.match(patron)){
        document.querySelector("#rciu").style.visibility="hidden"
    }else{
        document.querySelector("#rciu").style.visibility="visible"
        event.preventDefault();
    }
    if(pais.match(patron)){
        document.querySelector("#rpai").style.visibility="hidden"
    }else{
        document.querySelector("#rpai").style.visibility="visible"
        event.preventDefault();
    }

    if(cvt.match(patronCantidades)){
        document.querySelector("#rvt").style.visibility="hidden"
    }else{
        document.querySelector("#rvt").style.visibility="visible"
        event.preventDefault();
    }
    if(tfc.match(patronCantidades)){
        document.querySelector("#rtc").style.visibility="hidden"
    }else{
        document.querySelector("#rtc").style.visibility="visible"
        event.preventDefault();
    }
    if(kfc.match(patronCantidades)){
        document.querySelector("#rkf").style.visibility="hidden"
    }else{
        document.querySelector("#rkf").style.visibility="visible"
        event.preventDefault();
    }
    if(sr.match(patronCantidades)){
        document.querySelector("#rsen").style.visibility="hidden"
    }else{
        document.querySelector("#rsen").style.visibility="visible"
        event.preventDefault();
    }
    if(plumillas.match(patronCantidades)){
        document.querySelector("#rplum").style.visibility="hidden"
    }else{
        document.querySelector("#rplum").style.visibility="visible"
        event.preventDefault();
    } 
    
    document.querySelector(".requerido").forEach(labelABuscar => {
        if (labelABuscar.style.visibility=="visible") {
            console.log(labelABuscar)
            alert("Corrija los campos descatados con un *, los campos de cantidad deben de tener valores desde 0")
        }
    });
}
