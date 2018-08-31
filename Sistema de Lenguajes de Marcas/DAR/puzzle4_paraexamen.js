/**
* Función que se ejecuta al arrastrar el elemento. 
**/
function start(e) {
    e.dataTransfer.effecAllowed = 'move'; // Define el efecto como mover (Es el por defecto)
    e.dataTransfer.setData("Text", e.target.id); // Coje el elemento que se va a mover
    e.target.style.opacity = '0.4'; //Disminuye la opacidad del elemento
}

/**
* Función que se ejecuta se termina de arrastrar el elemento. 
**/
function end(e){   
    e.target.style.opacity = ''; // Restaura la opacidad del elemento           
    e.dataTransfer.clearData("Data");        
}

/**
* Función que se ejecuta cuando un elemento arrastrable entra en el elemento desde del que se llama. 
**/
function enter(e) {  
    return true;
}

/**
* Función que se ejecuta cuando un elemento arrastrable esta sobre el elemento desde del que se llama. 
* Devuelve false si el objeto se puede soltar en ese elemento y true en caso contrario.
Sustituye XXXXXXX, YYYYYY por lo que corresponda
**/
function over(e) { 
    if ((e.target.className == "contenedorPieza"))
       { return false;}
    else
    return true;
}
    
/**
* Función que se ejecuta cuando un elemento arrastrable se suelta sobre el elemento desde del que se llama.

 Sustituye ZZZZZZZ por lo que corresponda
**/
function drop(e){
  
    var elementoArrastrado = e.dataTransfer.getData("Text");
    e.target.appendChild(document.getElementById(elementoArrastrado)); // Coloca el elemento soltado sobre el elemento desde el que se llamo esta funcion
      e.preventDefault(); // Evita que se ejecute la accion por defecto del elemento soltado.
    
   
}
