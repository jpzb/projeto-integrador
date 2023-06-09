// Importando a funcao de autenticacao de campos
import * as base from "./script_base.js";

// Pegando todos os botoes para ir para o evento
const btns = document.querySelectorAll(".sabermais");

// Percorrendo todos os botoes
btns.forEach((btn) => {
  // Adicionando um EventListener em cada um
  btn.addEventListener("click", () => {
    window.location.assign(`eventos/${btn.id}.html`);
  });
});

const barra_pesquisa = document.querySelector("#busca");
// Pegando a barra de pesquisa

const lista_conteudo = document.querySelectorAll(".evento");
// Pegando a lista de eventos

const lupa = document.querySelector("#lupa");

// Adicionando EventListener para resetar a pagina quando o campo estiver em branco
barra_pesquisa.addEventListener("search", () => {
  if (!barra_pesquisa.value) {
    base.barraVazia(lista_conteudo, true);
  }
});

// Adicionando um EventListener para quando for feita a pesquisa
barra_pesquisa.addEventListener("keypress", (event) => {
  let tecla = event.key;

  if (tecla == "Enter") {
    base.pesquisar(lista_conteudo, barra_pesquisa, true);
  }
});

lupa.addEventListener("click", () => {
  base.pesquisar(lista_conteudo, barra_pesquisa, true);
});

barra_pesquisa.addEventListener("input", () => {
  if (!barra_pesquisa.value) {
    base.barraVazia(lista_conteudo, true);
  }
});

// Adicionando todas as localizacoes no sessionStorage
localStorage.setItem(
  "ifes",
  '{"0":-20.197329691804068, "1": -40.2170160437478}'
);
localStorage.setItem(
  "aulaZico",
  '{"0":-20.210745686329638, "1": -40.26339017193191}'
);
localStorage.setItem(
  "treinoBlack",
  '{"0":-20.277042066307818, "1": -40.299547001384624}'
);
localStorage.setItem(
  "desafioNatacao",
  '{"0":-19.98934303687819, "1": -40.149159630227594}'
);
localStorage.setItem(
  "marDourado",
  '{"0":-20.372179535206815, "1": "-40.30335365665824}'
);
localStorage.setItem(
  "corridaPenha",
  '{"0":-20.326947780230874, "1": -40.291622531407256}'
);
localStorage.setItem(
  "etapeRio",
  '{"0":-22.919773340159463, "1": -43.1700841452671}'
);
localStorage.setItem(
  "surfItaparica",
  '{"0":-20.37053693311, "1": -40.30429837370785}'
);
localStorage.setItem(
  "basqueteCaue",
  '{"0":-20.309387282525176, "1": -40.294921876227576}'
);
localStorage.setItem(
  "motocrossArena",
  '{"0":-20.144511854276182, "1": -40.18332926312631}'
);
