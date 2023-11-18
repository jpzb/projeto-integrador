// Importando a funcao de autenticacao de campos
import * as base from "./base.js";

// Pegando todos os botoes para ir para o evento
const cards = document.querySelectorAll(".evento");

// Percorrendo todos os botoes
cards.forEach((card) => {
  // Adicionando um EventListener em cada um
  card.addEventListener("click", () => {
    window.location.assign(`evento.php?id_evento=${card.id}`);
  });
});

// Pegando o email do usuario logado
const email = document.querySelector("#nome_usuario");

if (!email) {
  base.naoEstaLogado();
}

// Pegando todos os botoes para se inscrever
const cancel = document.querySelectorAll(".inscricao");

// Percorrendo todos os botoes
cancel.forEach((btn) => {
  // Adicionando um EventListener em cada um
  btn.addEventListener("click", (event) => {
    event.stopPropagation();
    cancelarInscricao(btn.id);
  });
});

// Funcao para cancelar a inscricao
function cancelarInscricao(id) {
  // Iniciando um alert perguntando se o usuario deseja cancelar a inscricao.
  Swal.fire({
    title: "Cancelar inscrição?",
    icon: "question",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonColor: "#d33",
    confirmButtonText: "Sim",
    cancelButtonText: "Não",
  }).then((result) => { // Depois da resposta
    if (result.isConfirmed) { // Se confirmar
      // Desinscrever do evento
      window.location.assign(`conexaoBancoDados/cancelar_inscricao_evento.php?id=${id}`);
    }
  });
}

// Barra de pesquisa
const barra_pesquisa = document.querySelector("#busca");
const lupa = document.querySelector("#lupa");

// Adicionando EventListener para quando for feita a pesquisa
lupa.addEventListener("click", () => {
  cards.forEach((card) => {
    if(!(card.name == barra_pesquisa.value)) card.style.display = "none";
    else card.style.display = "block";
  });
});

barra_pesquisa.addEventListener("keypress", (event) => {
  let tecla = event.key;
  if (tecla == "Enter") {
    cards.forEach((card) => {
      if(!(card.name == barra_pesquisa.value)) card.style.display = "none";
      else card.style.display = "block";
    });
  }
});

barra_pesquisa.addEventListener("search", () => {
  cards.forEach((card) => {
    if(!(card.name == barra_pesquisa.value)) card.style.display = "none";
    else card.style.display = "block";
  });
});

barra_pesquisa.addEventListener("input", () => {
  cards.forEach((card) => {
    if(!(card.name == barra_pesquisa.value)) card.style.display = "none";
    else card.style.display = "block";
  });
});