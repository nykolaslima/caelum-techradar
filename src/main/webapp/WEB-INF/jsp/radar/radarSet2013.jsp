<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">  

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/protovis-3.2/protovis-d3.2.js"></script>
<script type="text/javascript" charset="utf-8" src="../../utils.js"></script>
<script type="text/javascript" charset="utf-8" src="../../radars/CaelumJul2013.js"></script>

<style type="text/css" media="screen">
  
#fig {
  height: 1000px;
  width: 1200px;
}

</style>
<script type="text/javascript" src="../../radar.js" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">

</script>

</head>

<body onload="init(h,w);">
<h1 id="title" style="text-align: center;"></h1>
<div id="radar"></div>

<h2>Sobre o Radar</h2>

Nossa ideia ao criar esse radar era divulgar sobre ferramentas, práticas
e processos que acreditamos. O oposto também é válido: divulgar tudo aquilo
que, por algum motivo, não acreditamos mais.

Todo o conteúdo deste documento é fortemente baseado na experiência
e conhecimentos dos nossos colaboradores.
Mas como qualquer discussão em engenharia de software, não há uma resposta
única e exata. Antes de seguir o que está escrito aqui, o leitor deve
analisar bem o contexto em que está envolvido.

Nosso tech radar usa o <a href="http://martinfowler.com/articles/radar-faq.html">formato definido e utilizado</a> 
pela Thoughtworks em <a href="http://www.thoughtworks.com/radar">seus radares</a>. 

É importante que o leitor entenda como esse radar funciona.
Os ítens foram classificados em práticas, ferramentas, plataformas,
linguagens/frameworks. Cada uma dessas categorias encontra-se em uma 
das extremidades do radar. 

Além disso, cada ítem foi colocado em um anel, de acordo com nosso 
sentimento. Os anéis são:

<dl>
	<dt>Adopt / Adote</dt>
	<dd>Nós acreditamos que esses ítens podem ser adotados pela indústria. Acreditamos
	que a escolha desses ítens é, na maioria das vezes, acertada.</dd>
	
	<dt>Trial / Experimente</dt>
	<dd>Vale a pena testar em projetos menores ou com baixa criticidade.</dd>

	<dt>Assess / Explore</dt>
	<dd>Deve ser explorados com o objetivo de ver como se encaixa em sua empresa.</dd>

	<dt>Hold / Evite</dt>
	<dd>Os ítens que estão aqui devem ser evitados.</dd>

</dl>

Esta é a primeira vez que nos organizamos para gerar tal documento. Temos
muito ainda a aprender sobre ele, e portanto, todo feedback é bem vindo. 

<h2 class="quadrante">Práticas</h2>

<dl>
	<dt>Client side MV*</dt>
		<dd>Envers e AngularJS em trial: bem produtivo, muita coisa pronta. Backbone em hold. (Sr. Saúde)</dd>
	<dt>Testes automatizados</dt>
		<dd>
		
			Testes automatizados são fundamentais. E dado a essa popularização, muitas ferramentas e práticas
			apareceram para facilitar o trabalho. Um bom exemplo é a prática de TDD. Nós a recomendamos fortemente, e
			sugerimos que todos os desenvolvedores façam uso dela ao longo do seu dia de trabalho. TDD e os
			testes de unidade agregarão diversas vantagens ao seu processo. Você pode ler mais sobre isso nos
			<a href="http://www.aniche.com.br/publications">trabalhos e pesquisas do Aniche</a>.
			
			No entanto, testes de aceitação é algo hoje que olhamos com bastante parcimônia. Não os escrevemos
			para cada detalhe da aplicação, mas apenas para as partes vitais do sistema. Esse tipo de teste é
			caro de ser escrito e mantido, e portanto os usamos com parcimônia. Sugerimos também que você fuja
			de frameworks que possibilitam a escrita desses testes em linguagem natural, como é o caso de Cucumber
			e JBehave. Essa bateria é geralmente difícil de ser mantida, e o mesmo efeito de legibilidade pode
			ser alcançado por meio de boas práticas de código de teste. Esse tipo de framework é geralmente associado
			com a prática de BDD. Acreditamos que o pensamento BDD, ou seja, guiar o desenvolvimento pelo
			comportamento esperado do sistema, faz sentido. 
		
		</dd>
	<dt>Visualização mobile de sites</dt>
		<dd>
		
			O crescimento do mercado mobile é gigantesco em todo o mundo. 
			No Brasil, a penetração de smartphones e tablets no mercado é um pouco mais lenta, 
			mas tem crescido a passos largos, impulsionada por iniciativas governamentais, produção local de 
			aparelhos, popularização do 3G, início do 4G e oferta de aparelhos bons cada vez mais baratos. 
			Nesse cenário, acreditamos que a Web tem um papel fundamental.

			Acreditamos na estratégia "Web First", deixando a construção de aplicativos nativos em segundo 
			plano e apenas em cenários onde são necessários e agregam real valor pro usuário e para a empresa. 
			Acreditamos na Web acessível, multiplataforma e democrática. Por essa razão, recomendamos que se 
			adote o design responsivo e outras técnicas de design adaptativo pra prover um único site, 
			fluído e flexível, para todos os usuários. Entendemos que, como toda solução, o design 
			responsivo tem suas limitações, mas acreditamos que seus benefícios fazem dessa técnica a 
			melhor abordagem, ao invés da criação de sites mobile separados. Adotar a estratégia de um site 
			único adaptável é a melhor maneira de estar preparado para a evolução da Web 
			e dos dispositivos do futuro.

		
		</dd>
	<dt>Técnicas de disseminação de conhecimento</dt>
		<dd>Hack day, vale testar na sua empresa, se possível de aplicar. Brown bag vale muito a pena, gostamos muito, temos toda semana. (Ceci)</dd>
	<dt>Microservices</dt>
		<dd>
		
			A quebra de um programa em diversas partes é uma das grandes discussões de modelagens. 
			Em uma granularidade maior e pensando em responsabilidades distintas é possível dividir um sistema 
			em outros menores. Mas com o passar do tempo percebemos empiricamente que a manutenção de tais sistemas 
			fica cada vez mais complicada. A quebra em micro serviços é uma possibilidade que tem sido mais 
			discutida nos últimos anos. Mas otimizar uma variável (no caso, o tamanho de cada serviço) 
			pode complicar outra variável (por exemplo, a complexidade da comunicação).

			Se o que mais dói na evolução dos serviços é a evolução do protocolo de comunicação, há indícios de 
			que seja interessante minimizar a complexidade da comunicação. Não estamos falando do uso de um 
			formato mais simples, mas de minimizar a variedade (os tipos) de comunicações entre os sistemas. 
			Se cada um deles é relativamente pequeno e auto-contido, a interface de comunicação pode ser mais 
			simples e estável - e este pode ser um bom caminho para quem pretende trabalhar com serviços, 
			independente de serem micro ou macro.
		
		</dd>
	<dt>UX ágil</dt>
		<dd>LeanUX, prototipação no navegador (NoPSD), user feedback. Muito legal, agrega muito valor, mas pode ser difícil de aplicar. (Archie)</dd>
	<dt>Métricas</dt>
		<dd>
		
			Temos gostado cada vez mais de fazer uso de métricas de código para encontrar trechos
			de código deficientes no sistema. Elas são geralmente uma forma barata de detectar problemas.
			Em nossa opinião, todas as métricas são bem vistas; elas erram, mas acertam bastante também.
			
			Existem diversas ferramentas que as calculam, como é o 
			caso do Eclipse Metrics, JDepend, e etc. O problema é que elas são difíceis de serem utilizadas
			juntas. Hoje temos usado uma <a href="http://www.codesheriff.com">ferramenta própria</a>. 
			
		</dd>
	<dt>Gestão visual</dt>
		<dd>Quadro (passivo), Trello (ativo). Se fizer parte do workflow do time ficar sempre olhando pras coisas, blz ser ativo. (Ceci)</dd>
	<dt>Práticas ágeis</dt>
		<dd>Refatoração, programação pareada, retrospectiva, code review, desenvolvimento iterativo e incremental, integração contínua, one-click deploy. Não 100% do tempo, mas adotar. (Ceci)</dd>
	<dt>DevOps</dt>
		<dd>
		
			Os desenvolvedores precisam estar atentos a todos os pontos de falha que um software pode ter e 
			isso vai muito além dos tradicionais bugs que o sistema pode ter. A infraestrutura da aplicação é 
			um ponto importante nisso e os desenvolvedores que conhecem aspectos importantes disso levam muita 
			vantagem na resolução desses problemas. Saber configurar um servidor, customizar de acordo com as 
			necessidades do projeto e corrigir problemas de infraestrutura, além de aumentar o senso de 
			responsabilidade da equipe sobre o sistema em questão, traz maior versatilidade do time e uma 
			fonte de experiência para projetos futuros.
		
		</dd>
	<dt>Open Source</dt>
		<dd>Maior parte das soluções que usamos, aprendizado é interessante, dar de volta pra comunidade, expor sua marca. Use e faça. (Ceci)</dd>
</dl>


<h2 class="quadrante">Ferramentas</h2>

<dl>
	<dt>Editor de texto para programar</dt>
		<dd>
			IDEs trazem muitas facilidades para o desenvolvedor, como refatoração, code completion, navegação
			no código, etc. Não importa qual seja a sua IDE favorita (Eclipse, NetBeans, Visual Studio), mas use uma.
			
			Não somos a favor do uso de editores de texto simples como IDE. Programar usando um bloco de notas não
			é produtivo e totalmente sujeito a erros. Uma exceção é o VIM, que com seu conjunto de plugins, torna-se
			uma IDE bastante interessante para quem sabe usar. 
		
		</dd>
	<dt>Controladores de versão</dt>
		<dd>Lock-based: Pára! Centralizado: fuja. Git com Github ou Bitbucket, beleza. Hg também beleza, mas mercado menor aumenta o risco da tecnologia. Estude ambos, não use como SVN/CVS.</dd>
	<dt>Jekyll</dt>
		<dd>Instável, muda com a versão e isso atrapalha porque documentação não devia dar trabalho. Alternativa: MiddleMan(Archie)</dd>
	<dt>Gerenciamento de dependências</dt>
		<dd>
		
		Foi-se o tempo em que era necessário garimpar a internet para achar o link para o download da biblioteca que 
		vamos usar na nossa aplicação. Hoje em dia qualquer ambiente de programação respeitável possui alguma 
		ferramenta em que podemos declarar quais são as bibliotecas necessárias para que a aplicação rode. 
		Esse tipo de ferramenta baixa todas as bibliotecas declaradas, junto com as suas dependências.
		
		Portanto, considere fortemente usar o gerenciador de dependências mais 
		usado ou o mais fácil de usar do seu ambiente de desenvolvimento. Dessa forma, com algumas poucas 
		linhas de configuração e um comando conseguimos baixar todas as bibliotecas e suas dependências. 
		Exemplos são o Maven e o Ivy para Java, o Gradle para Java/Groovy, o SBT para Scala, Bundler para Ruby. 
		
		Em casos raros, caso a ferramenta comece a atrapalhar, por exemplo demorando demais para fazer 
		os downloads ou complicando a configuração, você sempre pode pedir para baixar todas as bibliotecas, 
		incluí-las no projeto e parar de usar a ferramenta.
		
		</dd>
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
		<dd>
		
		Hoje, o mercado está dividido entre Android (maior penetração) e iOS (maior geração de receita). 
		O Windows Phone aparece como uma terceira opção, mas cremos que vá tomar o lugar de nenhum dos principais - 
		pelo menos não tão cedo. A questão é que usuários de Android ou iOS são fiéis a suas plataformas e, 
		normalmente, investiram dinheiro em Apps. Para que eles mudem de plataforma (e percam parte desse 
		investimento no processo), normalmente precisa acontecer algo grave (seguidas versões ruins, experiências desastrosas, etc.) ou um 
		distanciamento tecnológico muito grande (uma plataforma ficar muito a frente da outra). Vemos muitos usuários de iOS com 
		disposição para tentar Android e vice-versa, mas poucos querendo dar uma chance ao Windows Phone. 

		O Monotouch agora se chama Xamarin (nome da empresa que desenvolve) e é uma alternativa que está ganhando espaço, 
		inclusive chamando nossa atenção. A ideia é escrever uma base de código única, 
		compilar para cada plataforma (iOS e Android, das mobile) e gerar Apps nativos para cada uma. 
		Como conseguir isso, se as APIs são tão diferentes? Usando o .NET Framework (port) ao máximo, 
		deixando pouca coisa para as APIs nativas. Ainda não é 100% mágico, ainda é preciso tratar 
		diferenças entre cada plataforma. Mas está chegando perto! A linguagem usada é o C#, que dispensa apresentações. 
		O IDE está em constante evolução e agora consegue desenhar a interface gráfica de forma 
		integrada (antes era preciso usar o Interface Builder no iOS ou escrever código no Android). 
		Em nossa opinião, a principal vantagem está em usar o C# e .NET framework, possibilitando uma 
		base de código única (ou quase) compartilhada entre Android, iOS e Windows Phone. 
		Está cada vez mais maduro e tem cases muito bons 
		(como o App do rdio, que é excelente e totalmente feito na plataforma).
		
		</dd>
	<dt>JavaEE 7</dt>
		<dd>Só é assess porque só roda no JBoss 8, que é alpha, e no GlassFish 4. (Albie e Mario)</dd>
	<dt>Computação na nuvem</dt>
		<dd>
		
		Fazer uso de computação na nuvem é com certeza uma escolha acertada. As diversas plataformas existentes no mercado
		são bem maduras. 
		
		O GAE, por exemplo, oferece uma administração simples, é fácil de escalar e tem diferenciais 
		como seu armazenamento de dados distribuído que cresce conforme os seus dados aumentam. 
		O Heroku conquista com a agilidade de fazer um deploy, seu ambiente de homologação e variedade de add-ons 
		para incrementar serviços na plataforma. A AWS te fornece uma plataforma elástica de fácil escalabilidade, 
		bastante flexibilidade pra evoluir com de acordo com suas novas necessidades e a evolução da sua empresa, 
		além de uma gigante infraesturura e variedade de serviços. 
		
		Nossa única ressalva atual ainda é com o OpenShift, pois acreditamos ainda que não é maduro o suficiente,
		comparado aos citados anteriormente.
		
	<dt>SAAS</dt>
		<dd>Se já há uma solução boa para seu problema rodando na nuvem, use. Exemplo: Github, IronIO, Wordpress, etc. (Sérgio)</dd>
</dl>


<h2 class="quadrante">Linguagens e Frameworks</h2>

Java, C# e Ruby já estão inseridas no mercado e não merecem menção por obviedade. Acreditamos que a escolha
dessas linguagens seja uma boa escolha na maioria absoluta dos casos. O mesmo vale pra HTML5, pois não vemos
um motivo óbvio para não adotar.

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
		<dd>
		
		Apesar do LESS/SASS e outros geradores de CSS trazerem ótimos recursos para o desenvolvedor, ele torna mais 
		fácil escrever um código ilegível do que com CSS puro. Precisa realmente testar se a equipe 
		consegue se adaptar com essas ferramentas para não ter que refazer o CSS após algum tempo de projeto.

		Quanto ao Twitter Bootstrap, se não há a necessidade de um layout exclusivo, ele é uma ótima opção para 
		agilizar o processo de front-end. Mas, para customizá-lo, você terá tanto trabalho 
		que vale a pena começar um CSS do zero do que tentar entender o bootstrap e modificá-lo.
		
		</dd>
	<dt>NoSQL</dt>
		<dd>
		
		Os bancos de dados não relacionais possuem diversos casos de uso em que funcionam melhores do que a 
		tradicional abordagem relacional. No entanto, tanto os desenvolvedores como os administradores de 
		dados precisam deixar de lado boa parte de seu conhecimento prévio do paradigma relacional e se 
		abrirem para um mundo novo, com abordagens muito diferentes das que estão acostumados.

		Essa mentalidade é um dos pontos principais para uma adoção de sucesso dos bancos de dados não 
		relacionais. Entender que alguns tipos de bancos de dados são melhores aplicados a determinados 
		problemas pode fazer a diferença para um caso de sucesso da adoção de NoSQL em um projeto.
		
		
		</dd>
	<dt>Linguagens que merecem menção</dt>
		<dd>
			Algumas linguagens devem ser comentadas, pois estão fazendo algum sucesso na comunidade.
			Scala é um bom exemplo. Acreditamos hoje que Scala pode ser usado para pequenas partes (ou micro-serviços)
			do seu projeto. Apesar de poderosa, o compilador ainda é bastante lento, e se o desenvolvedor abuse de recursos
			como mixins, o código pode acabar se tornando complicado e difícil de manter.
		</dd>
</dl>

<h2>Participantes</h2>

Agradecemos a todos os colaboradores da Caelum que de alguma forma participaram da
criação deste Radar. 

<h3>Organizadores</h3>

<ul>
	<li>Mauricio Aniche
	<li>Cecilia Fernandes
	<li>Guilherme Silveira
</ul>

<h3>Colaboradores</h3>

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
	<li>Alberto Souza
	<li>Natanael Pantoja
</ul>


</body>
</html>
