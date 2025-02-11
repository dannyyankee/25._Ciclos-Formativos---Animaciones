let nav = document.getElementById("nav");
let footer = document.getElementById("footer");
let linkSMR = document.getElementById("linkSMR");
let linkASIR = document.getElementById("linkASIR");
let linkDAW = document.getElementById("linkDAW");
let imagen1 = document.getElementById("imagen1");
let encabezado = document.getElementById("encabezado");
let cajaSMR = document.getElementById("cajaSMR");
let cajaASIR = document.getElementById("cajaASIR");
let cajaDAW = document.getElementById("cajaDAW");


const gestionarClickyOver = (event) => {
	if (event.target.id == "linkSMR" || event.target.id == "cajaSMR") {
		cambiarInfo("visor4.png", "SMR")
	}

	if (event.target.id == "linkASIR" || event.target.id == "cajaASIR" ) {
		cambiarInfo("visor1.png", "ASIR")
	}

	if (event.target.id == "linkDAW" || event.target.id == "cajaDAW") {
		cambiarInfo("visor2.png", "DAW")
	}
}

const cambiarInfo = (imagen, textoencabezado) => {
	imagen1.style.backgroundImage = "url(imagenes/" + imagen + ")"
	encabezado.textContent = textoencabezado;
	
}

nav.addEventListener("click", gestionarClickyOver)
footer.addEventListener("mouseover", gestionarClickyOver)
