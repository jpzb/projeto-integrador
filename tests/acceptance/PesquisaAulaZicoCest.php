<?php


namespace Tests\Acceptance;

use Tests\Support\AcceptanceTester;

class PesquisaAulaZicoCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function PesquisaAulaZicoCest(AcceptanceTester $I)
    {
      $I->amOnPage('/projeto-integrador/ProgWeb/Desenvolvimento/home.html'); 
      $I->fillField('pesquisarCampo', 'Aula do Zico'); 
      $I->click('🔍'); 
      $I->click('Saber Mais'); 
      $I->seeCurrentURLEquals('/projeto-integrador/ProgWeb/Desenvolvimento/eventos/aulaZico.html');
    }
}
