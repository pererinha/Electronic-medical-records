<form id='cadastro' name='cadastro'>
<div id='DivFormulario'>
<h2>Profissional</h2>
<table width='100%' border='0' cellspacing='1' cellpadding='1'>
<tr>
<td class='LabelFormulario'>*Nome:</td>
<td><input name='nmProfissional' type='text' class='InputTexto' id='nmProfissional' maxlength='80' /></td>
</tr>
<tr>
<td class='LabelFormulario'>*Profiss&atilde;o:</td>
<td>
StringBuffer inputSelect = new StringBuffer();
Profissao profissao;
inputSelect.append("<select name='cdProfissao' class='InputSelect' id='cdProfissao'>");
ArrayList profissaoPesquisa = new ArrayList();
DaoQuery daoQuery = new DaoQuery();
profissaoPesquisa = daoQuery.profissaoByDsProfissao("*");
inputSelect.append("<option value=''></option>");
String selected;
for(int i=0; i<profissaoPesquisa.size(); i++)
{
	profissao = (Profissao) profissaoPesquisa.get(i);
	if(profissao.getCdProfissao()==profissional.getCdProfissao())
		selected = "selected";
	else
		selected = "";
	inputSelect.append("<option value='" + profissao.getCdProfissao() + "' " + selected + ">" + profissao.getDsProfissao() + "</option>");
}
inputSelect.append("</select>");
</td>
</tr>
<tr>
<td class='LabelFormulario'>*Login:</td>
<td><input name='dsLogin' type='text' class='InputTexto' id='dsLogin' maxlength='20' /></td>
</tr>
<tr>
<td class='LabelFormulario'>*Senha:</td>
<td><input name='dsSenha' type='text' class='InputTexto' id='dsSenha' maxlength='10' /></td>
</tr>
<tr>
<td class='LabelFormulario'>*Nascimento:</td>
<td><input name='dtNacimento' type='text' class='InputTexto' id='dtNacimento' maxlength='10' /></td>
</tr>
<tr>
<td class='LabelFormulario'>*Nome da M&atilde;e:</td>
<td><input name='nmMae' type='text' class='InputTexto' id='nmMae' maxlength='80' /></td>
</tr>
<tr>
<td class='LabelFormulario'>*Sexo:</td>
<td><select name='tpSexo' class='InputSelect' id='tpSexo'>
<option value=''></option>
<option value='M'>Masculino</option>
<option value='F'>Feminino</option>
</select></td>
</tr>
<tr>
<td class='LabelFormulario'>*Estado:</td>
<td>
<select id='idStatus' class='InputSelect'>
<option value=''></option>
<option value='A'>Ativo</option>
<option value='I'>Inativo</option>
</select>			</td>
</tr>
<tr>
<td> </td>
<td> </td>
</tr>
<tr>
<td><input type='hidden' value='' id='cdProfissional' name='cdProfissional' /></td>
<td id='DivFormularioAlerta'></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href='javascript://' onclick='FormularioSalvar()'><img src='imagens/BotaoSalvar.gif' width='54' height='14' hspace='5' border='0' /></a><a href='javascript://' onclick='FormularioLimpar()'><img src='imagens/BotaoLimpar.gif' width='57' height='14' hspace='15' border='0' /></a><a href='javascript://' onclick='FormularioCancelar()'><img src='imagens/BotaoCancelar.gif' width='69' height='14' hspace='5' border='0' /></a></td>
</tr>
</table>
<p>&nbsp;</p>
</div>
</form>
