$(document).ready(function(){
	$('.materialboxed').materialbox();
    $('.datepicker').datepicker();
    $('select').formSelect();
    $('.sidenav').sidenav();
    $(".dropdown-trigger").dropdown();
    $('.collapsible').collapsible();
	$('#obs').val();
	$('.tap-target').tapTarget();
	$('.tooltipped').tooltip();
	$('.fixed-action-btn').floatingActionButton({
    toolbarEnabled: true
  });
	$('.timepicker').timepicker();
    $('.chips').chips();
	$('.chips-placeholder').chips({
		placeholder: 'Insira as palavras',
    	secondaryPlaceholder: ' + ',
        onChipAdd: chips2Input,
        onChipDelete: chips2Input,
    });
  	var email = sessionStorage.getItem("E-mail");
  	var escolha 	= localStorage.setItem("escolha",1);
    var desc 		= "";
	var tipo 	  	= localStorage.setItem("tipo",0);
	var nome 		= "";
	var desc 		= "";
	var licao 		= "";
	var entrega 	= "";
	function chips2Input(){
	    var instance = M.Chips.getInstance(document.getElementById('chip1')), inpt = document.getElementById('myInputField');

	    inpt.value =  null;
	    for(var i=0; i<instance.chipsData.length; i++){
	        if(inpt.value == null)
	            inpt.value = instance.chipsData[i].tag;
	        else{
	            inpt.value += ','+instance.chipsData[i].tag; //csv
	        }
	    }
	    desc = inpt.value;
	    $("#myInputField").val("");
	}
//$.post("php/atividades.php",function(msg){
//		$("#atividades").html(msg);

//	});
 
//  $("#up").click(function(){
//  	var video = $("#video").val();
//  	alert(video)

//  	$.post("php/upload.php",{},function(msg){
// 	alert(msg)

// });
//  })


// $.post("php/foto.php",function(msg){
// 	$("#foto").html(msg);
// });


// cadastrar pacientes

$("#btn_enviar_ficha").click(function(){

	var nome 	  	 = 			$("#txt_nome").val();
	var alergia 	 = 			$("#txt_alergia").val();
	var email 		 =			$("#txt_email").val();
	var telefone     = 			$("#txt_telefone").val();
	var mae 		 = 			$("#txt_nome_mae").val();
	var pai 		 = 			$("#txt_nome_pai").val();
	var sexo 		 = 			$("#txt_sexo").val();
	var nascimento   = 			$("#txt_data").val();
	var escolaridade = 			$("#txt_escolaridade").val();
	var atividades 	 = 			$("#txt_atividades").val();
	var periodo 	 = 			$("#txt_periodo").val();
	var autorizacao  = 			$("#txt_autorizar").val();
	var relatorio    = 			$("#txt_relatorio").val();
	var usi1         = 		    "paciente";

	if ((atividades == "") || (nome =="") ||  (alergia =="") || (email =="") || (telefone =="") || (mae =="") || (pai =="") || (sexo =="") || (nascimento =="") || (escolaridade =="") || (periodo =="") || (autorizacao =="") || (relatorio =="")) 
	{
		preencha();
	}
	else
	{
		$.post("php/anaminesi2.php",{usi1: usi1},function(msg){
			$.post("php/anaminesi.php",{atividades:atividades,nome:nome,alergia:alergia,email:email,telefone:telefone,mae:mae,pai:pai,sexo:sexo,nascimento:nascimento,escolaridade:escolaridade,periodo:periodo,autorizacao:autorizacao,relatorio:relatorio},function(msg){
				M.toast({html: msg, classes: 'rounded'});
				$("#txt_nome").val("");
				$("#txt_alergia").val("");
				$("#txt_email").val("");
				$("#txt_telefone").val("");
				$("#txt_nome_mae").val("");
				$("#txt_nome_pai").val("");
				$("#txt_sexo").val("");
				$("#txt_data").val("");
				$("#txt_escolaridade").val("");
				$("#txt_atividades").val("");
				$("#txt_escola").val("");
				$("#txt_periodo").val("");
				$("#txt_autorizar").val("");
				$("#txt_relatorio").val("");
			
				$.post("php/pacientes.php",function(msg)
				{
					$("#paciente").html(msg);		
	
				});

			});
		});
	}
});

// logar
	
$("#btn_logar").click(function(){
	var email_login = $("#txt_email_login").val();
	var senha_login = $("#txt_senha_login").val();
	
	$.post("php/logar.php",{email:email_login,senha:senha_login},function(msg){
		$("#txt_email_login").val("");
		$("#txt_senha_login").val("");
				
		if(msg == 1)
		{
			window.location = "pacientes.html"
		}
		else
		{
			M.toast({html: "Usuario não encontrado.",classes: "rounded"});
		}
	});
});

// enviar nota

$("#btn_nota").click(function(){
	
	var email = sessionStorage.getItem("E-mail");
	var exercicio = $("#txt_exercicio").val();
	var nota = $("#txt_nota").val();
	var obs = $("#obs").val();
	$("#evolucao").show();
	$("#curve_chart").hide();
	evolucao();

	if (nota < 11) 
	{	
		if ((exercicio == "") || (nota == ""))
		{
			preencha();
		}
		else
		{
			$.post("php/consulta.php",{exercicio: exercicio, nota: nota, obs: obs, email: email},function(msg){
			
				$.post("php/consulta_A.php",{email: email},function(msg){
					$("#tabela").html(msg);
				    	evolucao();
			    });

			});
		}
	}
	else
	{
		M.toast({html: "A nota deve ser no Maximo 10.",classes: "rounded"});
		$("#txt_nota").val("");
	}
});

// ajax para trocar de pagina

$(".pagina").click(function(){
   	var pagina = $(this).attr("id");
   	$("#sumir").hide();
   	$(".container").load(pagina + ".html");
});

// aparecer nota do paciente

$.post("php/consulta_A.php",{email: email},function(msg){
	$("#tabela").html(msg);
	$("#txt_exercicio").val("");
	$("#txt_nota").val("");
	$("#obs").val("");
});

// Aparecer Pacientes

$.post("php/pacientes.php",function(msg){
	$("#paciente").html(msg);		
});

// enviar video

$(".btn_enviar_video").click(function(){
	escolha = localStorage.getItem("escolha");
	if (escolha == 1) {
		nome 	= $("#nm_link").val();
		tipo = localStorage.getItem("tipo");
		if (tipo == 0) {
			desc 	= $("#url_link").val();	
		}
		else
		{
			desc = $('#url_file').val();
		    $.ajax({
		        url: 'php/upload_video.php',
		        dataType: 'video/mp4',
		        cache: false,
		        contentType: false,
		        processData: false,
		        data: desc,                         
		        type: 'post',
		        success: function(msg){
		            alert(msg);
		        }
		     });
		}
	}
	else
	{
		if (escolha == 2) {
			nome 	= $("#nm_atv").val();
			desc 	= $("#ds_instr").val();	
		}
		else
		{
			if(escolha == 1,2 || escolha == 2,1)
			{
				nome = $("#nm_link").val() + "," + $("#nm_atv").val();
				tipo = localStorage.getItem("tipo");
				if (tipo == 0) {
					desc = $("#url_link").val() + ",";
				}
				else
				{
					desc = $("#url_link").val() + ",";
				}
				desc += $("#ds_instr").val()
			}
		}
	}
	licao 	= "video";
	entrega = $("#dt_entrega").val() + " " + $("#hr_entrega").val();
	if ((nome == "") || (desc == "")) 
	{
		preencha();
	}
	else
	{
		$.post("php/licao.php",{licao: licao},function(msg){
			alert(msg);
			$.post("php/atividade.php",{nome: nome, desc: desc,escolha:escolha},function(msg){
				alert(msg);
				$.post("php/tarefa.php",{email: email, entrega: entrega},function(){
					alert(msg);
					// drawChart();
				});
			});
		});
	}
	
});

$('#btn_enviar_palavras').click(function(){

        var entrega = $('#txt_data_palavra').val() + " " + $('#txt_hora_palavra').val();
        var licao 	= "audio";
        var nome 	= $('#txt_nome_palavra').val();

        if (entrega == "" || nome == "" || desc == ""){
            M.toast({html:"Preencha todos os campos!",classes:"rounded"});
            M.toast({html:entrega+""+nome+""+desc,classes:"rounded"});
        }
        else{
            $.post("php/licao.php",{licao:licao},function(msg){
                alert(msg);
                $.post("php/atividade.php",{nome:nome,desc:desc},function(msg){
                    alert(msg);
                    desc = "";
                    $.post("php/tarefa.php",{email:email,entrega:entrega},function(msg){
                        alert(msg);
                    }); 
                });
            });    
        }

        
    });
 //  	$("#escolha_video").load(function() {
	// 	$("#escolha_video").change(function(){
	// 		escolha = $("#escolha_video").val();
	// 		alert(escolha);
	// 	});
	// });

$("#escolha_video").change(function(){
	escolha = $("#escolha_video").val();
	localStorage.setItem("escolha",escolha);
	if (escolha == 1) {
		$(".dt_entrega").show();
		$(".hr_entrega").show();
		$(".btn_atividade_envia_recebe_video").hide();
		$("#envia_video").attr("class","col s6 l6");
		$(".btn_atividade_envia_video").show(); 
		$("#atividade_recebe_video").hide();
		$("#atividade_envia_video").attr("class","col s12 l12");
		$("#atividade_envia_video").show();
	}
	else
	{
		if (escolha == 2) {
			$(".btn_atividade_envia_recebe_video").hide();
			$(".btn_atividade_recebe_video").show();
			$(".recebe_video").attr("class","input-field col s12 l6 recebe_video");
			$("#atividade_envia_video").hide();
			$("#atividade_recebe_video").attr("class","col s12 l12");
			$("#atividade_recebe_video").show();
		}
		else
		{
			if(escolha == 1,2 || escolha == 2,1)
			{
				$("#envia_video").attr("class","col s12 l12");
				$(".recebe_video").attr("class","input-field col s12 l12 recebe_video");
				$(".dt_entrega").hide();
				$(".hr_entrega").hide();
				$(".btn_atividade_envia_video").hide();
				$(".btn_atividade_recebe_video").hide();
				$(".btn_atividade_envia_recebe_video").show();
				$("#atividade_envia_video").show();
				$("#atividade_envia_video").attr("class","col s6 l6");
				$("#atividade_recebe_video").attr("class","col s6 l6");
				$("#atividade_recebe_video").show();
			}
		}
	}
});

$("[name=video]").change(function(){
	tipo = $(this).attr("value");
	localStorage.setItem("tipo",tipo);
	if (tipo == 0) {
		$(".url_link").show();
		$(".url_file").hide();
	}
	else
	{
		$(".url_file").show();
		$(".url_link").hide();		
	}
});


$.post("php/consulta.php",function(msg)
{
	$.post("php/media.php",function(msg)
	{
		$("#txt_exercicio").val("");
		$("#txt_nota").val("");
		$("#obs").val("");
	});
});

// auto complete busca

$("#search").on("keyup", function()
{
	var texto = $(this).val();				  
	if(texto == "")
	{
	  	$.post("php/pacientes.php",function(msg){
	        $("#paciente").html(msg);		
        });
	}
	else
 	{
	  	$.post("php/busca2.php",{produto: texto},function(msg){
			$("#paciente").html(msg);	
		});	
    }
});

$("#atv").click(function(){
	
	var email = sessionStorage.getItem("E-mail");
	var exercicio = $("#txt_exercicio").val();
	$("#evolucao").show();
	$("#curve_chart").hide();
	evolucao();
	if (exercicio == "")
	{
		alert("Digite o exercicio que deseje listar!")
	}
	else
	{
		$.post("php/atividades.php",{produto: exercicio,email:email},function(msg){
			$("#tabela").html(msg);	
		});
	}
	


});
		
});

function preencha()
{
	M.toast({html: "Preencha todos os campos.",classes: "rounded"});
}

// grafico

function drawChart() 
{
   	var email = sessionStorage.getItem("E-mail");
   	$.post("php/media.php",{email:email},function(msg)
    {
		//var dados = msg;
		//var quebra = dados.split("-");
		//console.log("oi",msg);
		var data = google.visualization.arrayToDataTable(msg);
          

		var options = 
		{
	  		title: 'Evolução Geral do Paciente',
	  		curveType: 'function',
	  		legend: { position: 'bottom' }
		};

       	var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
		chart.draw(data, options);
 	});
}

// KeyCode Logar

function logar(event)
{
	var x = event.keyCode;

	if (x == 13) 
	{
		var email_login = $("#txt_email_login").val();
		var senha_login = $("#txt_senha_login").val();


		$.post("php/logar.php",{email:email_login,senha:senha_login},function(msg){
	
			$("#txt_email_login").val("");
			$("#txt_senha_login").val("");
				
			if(msg == 1)
			{
				
				window.location = "pacientes.html"
			}
			else
			{
				M.toast({html: "Usuario não encontrado.",classes: "rounded"});
			}

		});
	}
}


// keyCode para o Busca

function busca(event)
{
	var x = event.keyCode;

	if (x == 13) 
	{
		var texto = $(this).val();				  
				  
		if(texto == "")
	    {
		  	$.post("php/pacientes.php",{busca: busca},function(msg){
				$("#paciente").html(msg);	
			});
    	}
		else
		{
		  	$.post("php/busca2.php",{produto: texto},function(msg){
				$("#paciente").html(msg);	
			});
 	    }
	}
}

function evolucao() 
{
   	var email = sessionStorage.getItem("E-mail");
   	var exercicio = $("#txt_exercicio").val();
   	$.post("php/grafico_atv.php",{email:email,produto: exercicio},function(msg)
    {
		var data = google.visualization.arrayToDataTable(msg);
          
  		var options = 
		{
	  		title: 'Evolução Por atividades',
	  		curveType: 'function',
	  		legend: { position: 'bottom' }
		};

       	var chart = new google.visualization.LineChart(document.getElementById('evolucao'));
		chart.draw(data, options);
 	});
}
