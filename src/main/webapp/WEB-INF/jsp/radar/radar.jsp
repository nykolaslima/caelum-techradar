<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">  

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/protovis-3.2/protovis-d3.2.js"></script>
<script type="text/javascript" charset="utf-8" src="utils.js"></script>
<script type="text/javascript" charset="utf-8" src="radars/CaelumJul2013.js"></script>

<style type="text/css" media="screen">
  
#fig {
  height: 1000px;
  width: 1200px;
}

</style>
<script type="text/javascript" src="radar.js" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">

</script>

</head>

<body onload="init(h,w);">
<h1 id="title" style="text-align: center;"></h1>
<div id="radar"></div>

Introdução: Mauricio e Ceci.
Blablabla inicial: motivação, processo (foto), explicação da categorização. 

Pessoas que participaram: todos os que colocaram post-it.

Nosso tech radar usa o <a href="http://martinfowler.com/articles/radar-faq.html">formato definido e utilizado</a> pela Thoughtworks em <a href="http://www.thoughtworks.com/radar">seus radares</a>.

<h2 class="quadrante">Práticas</h2>

<dl>
	<dt>Client side MV*</dt>
		<dd>Envers e AngularJS em trial: bem produtivo, muita coisa pronta. Backbone em hold. (Sr. Saúde)</dd>
	<dt>Testes automatizados</dt>
		<dd>TDD faz, BDD como maneira de pensar faz, ATDD não. Testes de aceitação não para cada detalhe: só pra coisas importantes. Fuja de testes em linguagem natural. (Ceci e Mauricio)</dd>
	<dt>Visualização mobile de sites</dt>
		<dd>Mobile-specific sites: não. Faz responsivo. (Sérgio?)</dd>
	<dt>Técnicas de disseminação de conhecimento</dt>
		<dd>Hack day, vale testar na sua empresa, se possível de aplicar. Brown bag vale muito a pena, gostamos muito, temos toda semana. (Ceci)</dd>
	<dt>Microservices</dt>
		<dd>Ideia é bem legal, vale a pena começar a usar: um sistema não quebra o outro, manutenção mais fácil, repetição de código é pouca. MAS não tem um guia de boas práticas, o que dificulta implementações. (Gui)</dd>
	<dt>UX ágil</dt>
		<dd>LeanUX, prototipação no navegador (NoPSD), user feedback. Muito legal, agrega muito valor, mas pode ser difícil de aplicar. (Archie)</dd>
	<dt>Métricas</dt>
		<dd>Métricas de código (Mauricio e Chico), métricas de vendas (Gui)</dd>
	<dt>Gestão visual</dt>
		<dd>Quadro (passivo), Trello (ativo). Se fizer parte do workflow do time ficar sempre olhando pras coisas, blz ser ativo. (Ceci)</dd>
	<dt>Práticas ágeis</dt>
		<dd>Refatoração, programação pareada, retrospectiva, code review, desenvolvimento iterativo e incremental, integração contínua, one-click deploy. Não 100% do tempo, mas adotar. (Ceci)</dd>
	<dt>DevOps</dt>
		<dd>Pra criar a mentalidade dos desenvolvedores de que infra é fail point e parte do trabalho. Deve ser automatizado. (Adriano)</dd>
	<dt>Open Source</dt>
		<dd>Maior parte das soluções que usamos, aprendizado é interessante, dar de volta pra comunidade, expor sua marca. Use e faça. (Ceci)</dd>
</dl>


<h2 class="quadrante">Ferramentas</h2>

<dl>
	<dt>Editor de texto para programar</dt>
		<dd>IDEs trazem facilidades gigantes em refactoração, code completion, navegação no código. Não importa a IDE: Vim com plugins certos, é IDE.</dd>
	<dt>Controladores de versão</dt>
		<dd>Lock-based: Pára! Centralizado: fuja. Git com Github ou Bitbucket, beleza. Hg também beleza, mas mercado menor aumenta o risco da tecnologia. Estude ambos, não use como SVN/CVS.</dd>
	<dt>Jekyll</dt>
		<dd>Instável, muda com a versão e isso atrapalha porque documentação não devia dar trabalho. Alternativa: MiddleMan(Archie)</dd>
	<dt>Gerenciamento de dependências</dt>
		<dd>Use sempre. Escolha o mais confortável para sua stack de tecnologias e seus conhecimentos e manda bala: Ant+Ivy, Maven, Bundler, SBT. Hold RVM. (Ongoing discussion na lista. Lucas?)</dd>
	<dt>Profiling</dt>
		<dd>Ferramentas como New Relic (nossa favorita) são legais e é interessante mantê-las rodando o tempo todo, não só quando dá caca. (Mario)</dd>
	<dt>NginX (nome mais genérico?)</dt>
		<dd>No brutal ajudou bastante como um proxy pra falar com um jetty ou outro, um load balacer, serve os arquivos estáticos muito mais rápido. Só que ainda usamos pouco... dá pra usar muito mais coisas dele. (Leozinho)</dd>
	<dt>Server-side JS</dt>
		<dd>Pra o que ele se propoe a fazer, ele é o melhor. Recomendado pra fazer serviços! Quando você precisa de uma camada de view mais inteligente, ter coisas não "blocantes" e com javascript. (André e Erich)</dd>
</dl>

<h2 class="quadrante">Plataformas</h2>

<dl>
	<dt>Mobile</dt>
		<dd>Android, iOS e Windows Phone. Discussão do mercado disso, dos devs específicos de cada uma e do Monotouch como uma boa opção para assess. (André, Erich e Osni)</dd>
	<dt>JavaEE 7</dt>
		<dd>Só é assess porque só roda no JBoss 8, que é alpha, e no GlassFish 4. (Albie e Mario)</dd>
	<dt>Computação na nuvem</dt>
		<dd>OpenShift: assess porque não é maduro ainda (Albie). AWS, GAE e Heroku: independente da sua opção, você vai ser feliz (Rodrigo).</dd>
	<dt>SAAS</dt>
		<dd>Se já há uma solução boa para seu problema rodando na nuvem, use. Exemplo: Github, IronIO, Wordpress, etc. (Sérgio)</dd>
</dl>


<h2 class="quadrante">Linguagens e Frameworks</h2>

Java, C# e Ruby já estão inseridas no mercado e não merecem menção por obviedade. Mesmo pra HTML5.

<dl>
	<dt>Action-based frameworks</dt>
		<dd>Agrupar na discussão. Asp.Net MVC, Rails (cuidado com projetos grandes, manutenção precisa ser constante), SpringMVC e VRaptor em adopt, escolha o que quiser. Play em trial por causa de violação de boas práticas de OO. Struts 1 e 2, fuja: o tempo passou. (Harada)</dd>
	<dt>Component-based frameworks</dt>
		<dd>JSF2 bacana. WebForms, JSF 1.*, GWT, Vaadin... livre-se disso.</dd>
	<dt>Mapeamento Objeto-Relacional</dt>
		<dd>(N)Hibernate adopt, claro. Discute que o Entity framework tá legal e vale a pena colocar em projetos pouco críticos - trial. (Harada)</dd>
	<dt>Geradores de JS</dt>
		<dd>CoffeeScript: debug é complicado, tem que saber JS de qualquer forma. Faz seu JS e encapsula direito que é mais fáicl de dar manutenção, entre outras coisas. (Jovis)</dd>
	<dt>Pré-processadores e bibliotecas de CSS</dt>
		<dd>Less, Sass. Ideia em assess porque tem que saber CSS anyway. *Bootstrap em assess pq precisa ver se vale a pena no seu caso: se for mudar muita coisa, não use. (Mizuta)</dd>
	<dt>NoSQL</dt>
		<dd>Baita ideia legal, tem seu nicho de aplicação cada vez mais forte por conta de BigData e modelagens em grafos. Só não tem tanta gente que consegue se disassociar do viés ER. Neo4J, MongoDB, Redis. (Dri)</dd>
	<dt>Linguagens que merecem menção</dt>
		<dd>(Discussão na lista)</dd>
</dl>

Referências aqui. (todos, please)

<ul>
	<li>Mauricio Aniche
	<li>Cecilia Fernandes
	<li>Guilherme Silveira
</ul>

<ul>
	<li>Mario Amaral
	<li>Osni Oliveira
	<li>Suelen Goularte Coelho
	<li>Rodrigo Turini
	<li>Adriano Almeida
	<li>Luiz Corte Real
	<li>Ricardo Valeriano
	<li>Guilherme Silveira
	<li>Lucas Cavalcanti
	<li>David Robert
	<li>William Mizuta
	<li>André Silva
</ul>

</body>
</html>
