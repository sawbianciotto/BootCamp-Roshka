document.getElementById("boton-ia").onclick = conIa;
document.getElementById("boton-alguien").onclick = iniciarJuegoAlguien;
document.getElementById("reiniciar").onclick = limpiartablero;

let jugador1 = "";
let jugador2 = "";
let pos1 = "";
let pos2 = "";

function iniciarJuegoAlguien(){
    limpiartablero();
    nombres("alguien");
}

function conIa() {
    limpiartablero();
    nombres("ia");
}

function limpiartablero(){
    const celdas = document.querySelectorAll("#tablero_tateti div");
    celdas.forEach(celda => {
        celda.innerText = ""
        celda.classList.remove("ganador");
    });

    document.getElementById("nombres").innerHTML = "";
    document.getElementById("pregunta").innerHTML = "";
}

function nombres(modo){
    document.getElementById("nombres").innerHTML = "";
    document.getElementById("pregunta").innerHTML = "";
    const container = document.getElementById("nombres");
    if(modo == "alguien"){
        container.innerHTML = `
            <div>
                <label>Jugador 1: <input type="text" id="jugador1"></label>
                <label>Jugador 2: <input type="text" id="jugador2"></label>
                <button id="guardar-nombres">Guardar</button>
            </div>
        `;
        document.getElementById("guardar-nombres").onclick = function() {
            jugador1 = document.getElementById("jugador1").value.toUpperCase();
            jugador2 = document.getElementById("jugador2").value.toUpperCase();
            if (verificar_nombres(jugador1, jugador2, "alguien")) {
                const container2 = document.getElementById("pregunta");
                container2.innerHTML = `
                    <div>
                        <h2 class = "titulo">Que jugador es la X y la O?</h2>
                        <label>Jugador 1: <input type="text" id="pos1"></label>
                        <label>Jugador 2: <input type="text" id="pos2"></label>
                        <button id="guardar-posiciones">Guardar</button>
                    </div>
                `;
                document.getElementById("guardar-posiciones").onclick = function() {
                    pos1 = document.getElementById("pos1").value.toUpperCase();
                    pos2 = document.getElementById("pos2").value.toUpperCase();
                    if(verificar_pos(pos1, pos2)){
                        jugar_alguien(pos1.toUpperCase());
                    }
                    else{
                        alert("Ingrese Valores correctos");
                    }
                };
            }
            else{
                alert("Los nombres no pueden estar vacios");
            }
            
        };
    }
    else{
        container.innerHTML = `
        <div>
            <label>Jugador: <input type="text" id="jugador1"></label>
            <button id="guardar-nombre">Guardar</button>
        </div>
        `;
        document.getElementById("guardar-nombre").onclick = function() {
            jugador1 = document.getElementById("jugador1").value.toUpperCase();
            if (verificar_nombres(jugador1, null, "ia")) {
                const container2 = document.getElementById("pregunta");
                container2.innerHTML = `
                    <div>
                        <h2 class = "titulo">Que figura queres ser X o la O?</h2>
                        <label>Jugador: <input type="text" id="pos1"></label>
                        <button id="guardar-posicion">Guardar</button>
                    </div>
                `;
                document.getElementById("guardar-posicion").onclick = function() {
                    pos1 = document.getElementById("pos1").value.toUpperCase();
                    if(verificar_pos(pos1, null, "ia")){
                        jugarIa(pos1.toUpperCase());
                    }
                    else{
                        alert("Ingrese Valores correctos");
                    }
                };
            }
            else{
                alert("El nombre no puede estar vacio");
            }
        }
    }
}

function verificar_nombres(nombre1, nombre2, modo){
    if (modo == "ia") 
        return nombre1 != "";
    return nombre1 != "" && nombre2 != "";
}

function verificar_pos(pos1, pos2, modo){
    pos1 = pos1?.toUpperCase();
    pos2 = pos2?.toUpperCase();
    if (modo === "ia") 
        return pos1 === "X" || pos1 === "O";
    return (pos1 === "X" || pos1 === "O") && (pos2 === "X" || pos2 === "O") && pos1 !== pos2;
}

function jugar_alguien(turno){
    const celdas = document.querySelectorAll("#tablero_tateti div");
    let valor = 0;
    celdas.forEach(celda => {
        celda.onclick = function() {
            if(celda.innerText === "" && verifcar_ganador() == null){
                marcar(celda,turno);
                turno = cambiarTurno(turno);
                valor ++;
                if(valor > 4){
                    setTimeout(function() {
                        let resultado = verifcar_ganador();
                        if (resultado && resultado.ganador != null) {
                            pintarGanador(resultado.posiciones);
                            if(resultado.ganador == pos1){
                                alert("felicidades " + jugador1 + " por ganar la partida");
                            } else {
                                alert("felicidades " + jugador2 + " por ganar la partida");
                            }
                        }
                        if(valor == 9 && verifcar_ganador() == null){
                            alert("Ocurrio un empate");
                        }
                    }, 100);
                }
            }
        };
    })
}

function cambiarTurno(turno){
    if(turno == "X"){
        return "O";
    }
    return "X";
}

function jugarIa(turno){
    const celda = document.querySelectorAll("#tablero_tateti div");
    let valor = 0;
    celda.forEach(celda =>{
        celda.onclick = function() {
            if(celda.innerText == "" && verifcar_ganador() == null){
                marcar(celda, turno)
                valor ++;
                turno = cambiarTurno(turno);
                if(verifcar_ganador() == null){
                    ia_juega(turno);
                    valor ++;
                    turno = cambiarTurno(turno);
                }
            }
           
            if (valor > 4) {
                setTimeout(function() {
                    let resultado = verifcar_ganador();
                    if (resultado && resultado.ganador != null) {
                        pintarGanador(resultado.posiciones);
                        if(resultado.ganador == pos1){
                            alert("felicidades " + jugador1 + " por ganar la partida");
                        }
                        else{
                            alert("te gano la ia jajajajajajajaja");
                        }
                    }
                    if(valor > 9 && verifcar_ganador() == null){
                        alert("Ocurrio un empate");
                    }
                }, 100);      
            }
        }     
    });
}

function ia_juega(turno){
    const celda = document.querySelectorAll("#tablero_tateti div");
    const combinacionesGanadoras = [
    [0,1,2], [3,4,5], [6,7,8], 
    [0,3,6], [1,4,7], [2,5,8], 
    [0,4,8], [2,4,6]           
    ];
    
    const rep = [];

    combinacionesGanadoras.forEach(combinacion => {
        let contador = 0;
        let vacio = -1;
        for(let i = 0; i < combinacion.length; i++){
            let idx = combinacion[i];
            if (celda[idx].innerText === turno) {
                contador++;
            } else if (celda[idx].innerText === "") {
                vacio = idx;
            }
        }
        rep.push({contador, vacio, combinacion});
    });

    let mejor_jugada = rep.find(r => r.contador === 2 && r.vacio !== -1);
    if (mejor_jugada) {
        marcar(celda[mejor_jugada.vacio], turno);
        return;
    }
    let jugada_normal = rep.find(r => r.contador >= 0 && r.vacio !== -1);
    if (jugada_normal) {
        marcar(celda[jugada_normal.vacio], turno);
        return;
    } 
}

function marcar(celda, turno){
    celda.innerText = turno;
}

function verifcar_ganador(){
    const celdas = document.querySelectorAll("#tablero_tateti div");
    let tablero = [
        ["", "", ""],
        ["", "", ""],
        ["", "", ""]
    ];
    
    celdas.forEach((celda, index) => {
        let fila = Math.floor(index / 3);
        let col = index % 3;
        tablero[fila][col] = celda.innerText;
    });

    // Filas
    for(let i = 0; i < 3; i++) {
        if(tablero[i][0] !== "" && tablero[i][0] === tablero[i][1] && tablero[i][1] === tablero[i][2]) {
            return {
                ganador: tablero[i][0],
                posiciones: [i*3, i*3+1, i*3+2]
            };
        }
    }
    // Columnas
    for(let j = 0; j < 3; j++) {
        if(tablero[0][j] !== "" && tablero[0][j] === tablero[1][j] && tablero[1][j] === tablero[2][j]) {
            return {
                ganador: tablero[0][j],
                posiciones: [j, j+3, j+6]
            };
        }
    }
    // Diagonal 1
    if(tablero[0][0] !== "" && tablero[0][0] === tablero[1][1] && tablero[1][1] === tablero[2][2]) {
        return {
            ganador: tablero[0][0],
            posiciones: [0, 4, 8]
        };
    }
    // Diagonal 2
    if(tablero[0][2] !== "" && tablero[0][2] === tablero[1][1] && tablero[1][1] === tablero[2][0]) {
        return {
            ganador: tablero[0][2],
            posiciones: [2, 4, 6]
        };
    }
    return null;
}

function pintarGanador(indices) {
    const celdas = document.querySelectorAll("#tablero_tateti div");
    indices.forEach(idx => {
        celdas[idx].classList.add("ganador");
    });
}


