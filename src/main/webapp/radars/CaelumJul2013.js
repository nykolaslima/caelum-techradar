//This is the title for your window tab, and your Radar
document.title = "Caelum Technology Radar";


//This is the concentic circles that want on your radar
var radar_arcs = [
                   {'r':100,'name':'Adopt'}
                  ,{'r':200,'name':'Trial'}
                  ,{'r':300,'name':'Assess'}
                  ,{'r':400,'name':'Hold'}
                 // ,{'r':500,'name':'Possible Extra if you want it'}
                 ];

//This is your raw data
//
// Key
//
// movement:
//   t = moved
//   c = stayed put
//
// blipSize: 
//  intValue; This is optional, if you omit this property, then your blip will be size 70.
//            This give you the ability to be able to indicate information by blip size too
//
// url:
// StringValue : This is optional, If you add it then your blips will be clickable to some URL
//
// pc: polar coordinates
//   r = distance away from origin ("radial coordinate")
//     - Each level is 100 points away from origin
//     t = angle of the point from origin ("angular coordinate")
//     - 0 degrees is due east
//
// Coarse-grained quadrants
// - Techniques: elements of a software development process, such as experience design; and ways of structuring software, such micro-services.
// - Tools: components, such as databases, software development tools, such as versions control systems; or more generic categories of tools, such as the notion of polyglot persistance.
// - Platforms: things that we build software on top of: mobile technologies like Android, virtual platforms like the JVM, or generic kinds of platforms like hybrid clouds
// - Programming Languages and Frameworks
//
// Rings:
// - Adopt: blips you should be using now; proven and mature for use
// - Trial: blips ready for use, but not as completely proven as those in the adopt ring; use on a trial basis, to decide whether they should be part of your toolkit
// - Assess: things that you should look at closely, but not necessarily trial yet - unless you think they would be a particularly good fit for you
// - Hold: things that are getting attention in the industry, but not ready for use; sometimes they are not mature enough yet, sometimes they are irredeemably flawed
//      Note: there's no "avoid" ring, but throw things in the hold ring that people shouldn't use.

var h = 1160;
var w = 1200;

var radar_data = [
    { "quadrant": "Techniques",
        "left" : 45,
        "top" : 18,
        "color" : "#8FA227",
        "items" : [ 
			// hold
            {"name":"Testes em linguagem natural", "pc":{"r":350,"t":95},"movement":"c"},
            {"name":"Site mobile específico", "pc":{"r":350,"t":165},"movement":"c"},    

			// assess
            {"name":"Testes de aceitação", "pc":{"r":250,"t":110},"movement":"c"},    

			// trial
            {"name":"Micro serviços", "pc":{"r":180,"t":155},"movement":"c"},    
            {"name":"UX Ágil", "pc":{"r":180,"t":125},"movement":"c"},   
            {"name":"Métricas de Código", "pc":{"r":180,"t":105},"movement":"c"},   
            {"name":"Hack Day", "pc":{"r":150,"t":170},"movement":"c"},
            {"name":"Client-side MV*", "pc":{"r":160,"t":135},"movement":"c"},   

			// adopt
            {"name":"Gestão Visual", "pc":{"r":30,"t":100},"movement":"c"},   
            {"name":"Web Sockets", "pc":{"r":20,"t":95},"movement":"c"},   
            {"name":"Práticas Ágeis", "pc":{"r":90,"t":170},"movement":"c"},   
            {"name":"Brown Bags", "pc":{"r":80,"t":150},"movement":"c"},   
            {"name":"DevOps", "pc":{"r":80,"t":110},"movement":"c"},   
            {"name":"Progressive Enhancement", "pc":{"r":80,"t":100},"movement":"c"},   
            {"name":"Design Responsivo", "pc":{"r":70,"t":170},"movement":"c"},   
            {"name":"Open Source", "pc":{"r":30,"t":100},"movement":"c"}   
        ]
    },
    { "quadrant": "Tools",
        "left": w-200+30,
        "top" : 18,
        "color" : "#587486",
        "items" : [ 
			// hold
            {"name":"Editor de Texto para Programar", "pc":{"r":390,"t":20},"movement":"c"},
            {"name":"RVM", "pc":{"r":390,"t":355},"movement":"c"},
            {"name":"Gradle", "pc":{"r":310,"t":10},"movement":"c"},   
            {"name":"Backbone JS", "pc":{"r":380,"t":85},"movement":"c"},   
            {"name":"Source Safe", "pc":{"r":380,"t":70},"movement":"c"},   
            {"name":"Clear Case", "pc":{"r":380,"t":50},"movement":"c"},   
			
			// assess
            {"name":"Grunt JS", "pc":{"r":280,"t":30},"movement":"c"},   
            {"name":"Chef", "pc":{"r":250,"t":75},"movement":"c"},   
            {"name":"Jekyll", "pc":{"r":230,"t":65},"movement":"c"},   
            {"name":"Monotouch", "pc":{"r":230,"t":50},"movement":"c"},   

			// trial
            {"name":"BitBucket", "pc":{"r":130,"t":85},"movement":"c"},  
            {"name":"Mod Page Speed", "pc":{"r":150,"t":85},"movement":"c"},  
 
			// adopt
            {"name":"Git", "pc":{"r":30,"t":55},"movement":"c"},   
            {"name":"Github", "pc":{"r":40,"t":30},"movement":"c"},   
            {"name":"Ant/Ivy", "pc":{"r":70,"t":15},"movement":"c"},   
            {"name":"Maven", "pc":{"r":80,"t":85},"movement":"c"},   
            {"name":"SBT", "pc":{"r":80,"t":10},"movement":"c"},   
            {"name":"Bundler", "pc":{"r":30,"t":30},"movement":"c"},
            {"name":"NGinx", "pc":{"r":30,"t":30},"movement":"c"},
            {"name":"New Relic", "pc":{"r":30,"t":30},"movement":"c"},
            {"name":"Node JS", "pc":{"r":30,"t":30},"movement":"c"}
        ]
    },
    { "quadrant": "Platforms",
        "left" :45,
         "top" : (h/2 + 18),
        "color" : "#DC6F1D",
        "items" : [
			// assess
            {"name":"Windows Phone", "pc":{"r":290,"t":265},"movement":"c"},   
            {"name":"OpenShift", "pc":{"r":250,"t":250},"movement":"c"},   
            {"name":"Java EE 7", "pc":{"r":270,"t":230},"movement":"c"},   

			// adopt
            {"name":"Android", "pc":{"r":70,"t":265},"movement":"c"},   
            {"name":"iOS", "pc":{"r":60,"t":260},"movement":"c"},   
            {"name":"AWS", "pc":{"r":40,"t":255},"movement":"c"},   
            {"name":"GAE", "pc":{"r":80,"t":245},"movement":"c"},   
            {"name":"Heroku", "pc":{"r":20,"t":200},"movement":"c"},
            {"name":"SaaS", "pc":{"r":30,"t":240},"movement":"c"}
        ]
    },
    { "quadrant": "Languages & <br>Frameworks",
        "color" : "#B70062",
        "left"  : (w-200+30),
        "top" :   (h/2 + 18),
        "items" : [ 
			// hold
            {"name":"Struts 1 e 2", "pc":{"r":370,"t":330},"movement":"c"},   
            {"name":"JSF 1.x", "pc":{"r":390,"t":320},"movement":"c"},   
            {"name":"WebForms", "pc":{"r":360,"t":310},"movement":"c"},   
            {"name":"Coffee Script", "pc":{"r":320,"t":340},"movement":"c"},   

			// assess
            {"name":"Less", "pc":{"r":250,"t":280},"movement":"c"},   
            {"name":"* Bootstrap", "pc":{"r":240,"t":355},"movement":"c"},   

			// trial
            {"name":"Play", "pc":{"r":170,"t":330},"movement":"c"},   
            {"name":"NoSQL", "pc":{"r":160,"t":275},"movement":"c"},   
            {"name":"Entity Framework", "pc":{"r":130,"t":282},"movement":"c"},

			// adopt
            {"name":"JSF 2", "pc":{"r":40,"t":330},"movement":"c"},
            {"name":"VRaptor", "pc":{"r":30,"t":282},"movement":"c"},
            {"name":"Spring MVC", "pc":{"r":30,"t":319},"movement":"c"},
            {"name":"Postgres", "pc":{"r":30,"t":310},"movement":"c"},
            {"name":"(N)Hibernate", "pc":{"r":60,"t":312},"movement":"c"},
            {"name":"Asp.Net MVC", "pc":{"r":50,"t":292},"movement":"c"},
            {"name":"CDI", "pc":{"r":30,"t":320},"movement":"c"},
            {"name":"HTML5", "pc":{"r":30,"t":345},"movement":"c"},
            {"name":"Ruby on Rails", "pc":{"r":80,"t":310},"movement":"c"}
        ]
    }
];