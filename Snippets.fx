
// Carregar dados na inicialização do aplicativo
ClearCollect(MinhaColecao, Filter(MicrosoftLists, Status = "Ativo"))

// Atualizar a coleção apenas quando necessário
ClearCollect(MinhaColecao, MicrosoftLists)

// Usar variáveis para armazenar pequenos conjuntos de dados
Set(UsuarioAtual, LookUp(MicrosoftLists, Email = User().Email))

// Atualizar um registro
Patch(MicrosoftLists, LookUp(MicrosoftLists, ID = 1), {Status: "Concluído"})

Patch(Sistema; Defaults(Sistema); 
{
    Usuario: Concat(colecaoRegistros; Nome;
    
})

// Criar um botão para navegar entre telas
Navigate(TelaDetalhes, ScreenTransition.Fade)

// Criar uma variável de contexto
UpdateContext({Mensagem: "Bem-vindo ao app!"})

// Criar uma variável global
Set(UsuarioAtual, "Francisco")

// Remover um registro
Remove(MicrosoftLists, LookUp(MicrosoftLists, ID = 10))

// Criar um alerta de confirmação
Notify("Operação concluída com sucesso!", NotificationType.Success)

// Validar um campo obrigatório
If(IsBlank(TextInput1.Text), Notify("Preencha o campo!", NotificationType.Error))

// Atualizar vários registros de uma vez
ForAll(MinhaColecao, Patch(MicrosoftLists, LookUp(MicrosoftLists, ID = ID), {Status: "Concluído"}))

// Criar um campo de pesquisa dinâmica
Search(MicrosoftLists, TextInput1.Text, "Nome")

// Criar mascara de texto
onChange:
Set(varMoeda;Text(Value(TextInput1.Text), "R$#.##0,00"))

Defaults:
varMoeda

onChange:
Set(varCel; 
"(" & 
Text(Mid(TextInput1.Text,1,1)) & 
Text(Mid(TextInput1.Text,2,1)) & 
Text(Mid(TextInput1.Text,3)) &
"-" & 
Text(Mid(TextInput1.Text,7,4)))


// Coleção com mais de 2000 itens
ClearCollect(colRegistro;
    Filter(Tabela_Clientes; ID_Espelho>=1)
);;

UpdateContext(maiorIDespelho;
    Max(colRegistro;ID_Espelho)
);

// Adicionando novo registro
Patch(Tabela_Clientes;
    Defaults(Tabela_Clientes);
    {   
        ID: Max(Tabela_Clientes, ID) + 1;
        ID_Espelho: maiorIDespelho + 1;
        Nome: TextInput1.Text;
        Email: TextInput2.Text;
        Telefone: TextInput3.Text
    }
);;

Clear(Minha_Colecao);;
With(
        {
          NumSequence: RoundUp(First(SortByColumns(Minha_Lista;"ID";SortOrder.Descending)).ID / 2000; 0)
        };
    ForAll(
        Sequence(NumSequence);
        With(
            {
                MinID: 2000 * (Value - 1) + 1;
                MaxID: 2000 * Value
            };
        Collect(
            Minha_Colecao,
            Filter(Minha_Lista; ID_Espelho >= MinID && ID_Espelho <= MaxID)
        )
    )
)
