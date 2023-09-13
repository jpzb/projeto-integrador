const form = document.getElementById("multi-step-form");
const steps = form.querySelectorAll(".step");
const nextBtns = form.querySelectorAll(".next-btn");
const prevBtns = form.querySelectorAll(".prev-btn");
let currentStep = 1;

// Validação dos campos
// Campo nome do evento
function validarNomeEvento(){
    const nomeEvento = document.querySelector("#nomeEvento"); 

    if (!nomeEvento.value){ // Adicionar a exclamação (!) antes pra funcionar
        return "nome do evento";
    } return true;
}    


// Campo data do evento
function validarDataEvento(){
    var dataEvento = document.querySelector("#dataEvento").value;
    if(!dataEvento || !verificaseDatadoEventoeMaiordoqueaDataAtual(dataEvento)){
        return "data do evento";
    }
    return true;
}


function verificaseDatadoEventoeMaiordoqueaDataAtual(dataEvento){
    var dataEvento = document.querySelector("#dataEvento").value;
    dataEvento = new Date(dataEvento);
    dataAtual = new Date();
    
    if(dataEvento.getFullYear() > dataAtual.getFullYear()) return true;
    if(dataEvento.getFullYear == dataAtual.getFullYear()){
        if(dataEvento.getMonth() > dataAtual.getMonth()) return true;
        if(dataEvento.getMonth() == dataAtual.getMonth()){
            if(dataEvento.getDate() + 1 >= dataAtual.getDate()) return true;
        }
    }
    return false;

}

function verificaseDatadoEventoeNoMesmoDia(dataEvento){
    var dataEvento = document.querySelector("#dataEvento").value;
    dataEvento = new Date(dataEvento);
    dataAtual = new Date();
    return dataEvento.getDate() + 1 == dataAtual.getDate();
}


// Campo horário início
function validarHorarioInicio(){
    var dataEvento = document.querySelector("#dataEvento").value;
    const horarioInicio = document.querySelector("#horarioInicio").value;
    const horaInicio = parseInt(horarioInicio.substring(0, 2), 10);
    const minutoInicio = parseInt(horarioInicio.substring(2), 10);
    if(!horarioInicio){
        return "horário inicial do evento";
    }
    if(verificaseDatadoEventoeNoMesmoDia(dataEvento)){
        let dataAtual = new Date();
        if(horaInicio > dataAtual.getHours()) return true;
        if(horaInicio == dataAtual.getHours()){
            if(minutoInicio >= dataAtual.getMinutes() + 2) return true;
        }
        return "horário inicial do evento";
    }
    if(verificaseDatadoEventoeMaiordoqueaDataAtual(dataEvento)){
        return true;
    }
    return "horário inicial do evento";
    
}


// Campo término estimado
function validarTerminoEstimado(){
    const horarioInicio = document.querySelector("#horarioInicio").value;0
    const horaInicio = parseInt(horarioInicio.substring(0, 2), 10);
    const horarioFinal = document.querySelector("#horarioFim").value;
    let horaFinal = parseInt(horarioFinal.substring(0, 2), 10);
    let minutoFinal = parseInt(horarioFinal.substring(2), 10);

    if(!horarioFinal){
        return "horário final do evento";
    }
    if(horaFinal > horaInicio) return true;
    if(horaFinal == horaInicio){
        if(minutoFinal >= minutoInicio + 2) return true;
    }
    return "horário final do evento";
}

function validarPrecoEvento(){
    const precoEvento = document.querySelector("#preco").value;
    if(!precoEvento || isNaN(precoEvento)){
        return "preço do evento";
    }
    return true;
}
// Step 1
function verificaStep1(){
    let validarNomeEvento1 = validarNomeEvento();
    let validarDataEvento1 = validarDataEvento();
    let validarHorarioInicio1 = validarHorarioInicio();
    let validarTerminoEstimado1 = validarTerminoEstimado();
    let validarPrecoEvento1 = validarPrecoEvento();

    let listaVerifica = [validarNomeEvento1, validarDataEvento1, validarHorarioInicio1, validarTerminoEstimado1, validarPrecoEvento1];
    let strErros = "";
    listaVerifica.forEach(elemento => {
        if (elemento !== true){
            strErros += elemento;
        }
    })

    if (!strErros.length > 0){
        currentStep++;
        console.log(currentStep)
        showStep(currentStep);
    }
    else {
        Swal.fire({
            title: "ERRO!",
            icon: "error",
            text: `Os campos ${strErros} estão inválidos!`
        })
    }

}
// Step 2
const campoCep = document.querySelector("#cepEvento");
campoCep.addEventListener("input", (e) => {
    formatCEP(campoCep);
});

// Calllback CEP
const listaEstados = [0, "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", 'MA', 'MT',
'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];
function callbackDaPaginaQueEnviaremosOCepDoEventoCadastradoPeloClienteNaPaginaDeCriarEventoNovo(conteudoRetornadoPelaPagina){
    if (!("erro" in conteudoRetornadoPelaPagina)) {
        //Atualiza os campos com os valores
        document.getElementById('logradouroEvento').value=(conteudoRetornadoPelaPagina.logradouro);
        document.getElementById('bairroEvento').value=(conteudoRetornadoPelaPagina.bairro);
        document.getElementById('cidadeEvento').value=(conteudoRetornadoPelaPagina.localidade);
        for(let i = 0; i < listaEstados.length; i++){
            if(listaEstados[i] == (conteudoRetornadoPelaPagina.uf)){
                document.getElementById('estadoEvento').value = i;
            }
        }
        
    } else {
        //CEP não Encontrado.
        Swal.fire({
            title: "ERRO!",
            icon: "error",
            text: `O CEP não foi encontrado!`
        });

        document.getElementById('logradouroEvento').value="";
        document.getElementById('bairroEvento').value="";
        document.getElementById('cidadeEvento').value="";
    }
}

// Script validar CEP
function validarCEPnoSiteViaCep(cep){
    //Cria um elemento javascript.
    var script = document.createElement('script');
    //Sincroniza com o callback.
    script.src = `https://viacep.com.br/ws/${cep}/json/?callback=callbackDaPaginaQueEnviaremosOCepDoEventoCadastradoPeloClienteNaPaginaDeCriarEventoNovo`;
    //Insere script no documento e carrega o conteúdo.
    document.body.appendChild(script);
}

function verificaFormatacaoCep(){
    var cep = campoCep.value;
    
    // Verifica se existe um valor no CEP
    if (cep) {
        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        validarCEPnoSiteViaCep(cep);
    } else {
        Swal.fire({
            title: "ERRO!",
            icon: "error",
            text: `O CEP está em formato inválido!`
        })
    }
}

function formatCEP(input) {
    // Remove todos os caracteres não numéricos
    var cep = input.value.replace(/\D/g, '');
  
    // Limita o CEP a 8 dígitos
    cep = cep.slice(0, 8);
  
    // Formata o CEP com o traço apenas quando tiver mais de 5 números
    if (cep.length > 5) {
      cep = cep.slice(0, 5) + '-' + cep.slice(5);
    }
    if (cep.length == 9) {
        verificaFormatacaoCep();
    }
    input.value = cep;
}

// Step 2
function verificaStep2(){

}
    // Campo logradouro


    // Campo cidade
    
    
    // Campo bairro
    
    
    // Campo cep
    
    
    
    // Campo número
    
    
    // Campo estado
    
    // Campo complemento



const showStep = (stepIndex) => {
    steps.forEach((step, index) => {
        step.style.display = index === stepIndex ? 'block' : 'none';
    });
};

const nextStep = () => {
    if (currentStep < steps.length - 1) {
        if (currentStep === 0) {
            verificaStep1();
        } else if(currentStep === 1){
            verificaStep2();
        } else {
            showStep(currentStep);
        }
    }
};

const prevStep = () => {
    if (currentStep > 0) {
        currentStep--;
        showStep(currentStep);
    }
};

nextBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        e.preventDefault();
        nextStep();
    });
});

prevBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        e.preventDefault();
        prevStep();
    });
});


// Inicialização
showStep(currentStep);