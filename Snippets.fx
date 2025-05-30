
-- Carregar dados na inicialização do aplicativo
ClearCollect(MinhaColecao, Filter(MicrosoftLists, Status = "Ativo"))

-- Atualizar a coleção apenas quando necessário
ClearCollect(MinhaColecao, MicrosoftLists)

-- Usar variáveis para armazenar pequenos conjuntos de dados
Set(UsuarioAtual, LookUp(MicrosoftLists, Email = User().Email))

-- Atualizar um registro
Patch(MicrosoftLists, LookUp(MicrosoftLists, ID = 1), {Status: "Concluído"})

-- Criar um botão para navegar entre telas
Navigate(TelaDetalhes, ScreenTransition.Fade)

-- Criar uma variável de contexto
UpdateContext({Mensagem: "Bem-vindo ao app!"})

-- Criar uma variável global
Set(UsuarioAtual, "Francisco")

-- Remover um registro
Remove(MicrosoftLists, LookUp(MicrosoftLists, ID = 10))

-- Criar um alerta de confirmação
Notify("Operação concluída com sucesso!", NotificationType.Success)

-- Validar um campo obrigatório
If(IsBlank(TextInput1.Text), Notify("Preencha o campo!", NotificationType.Error))

-- Atualizar vários registros de uma vez
ForAll(MinhaColecao, Patch(MicrosoftLists, LookUp(MicrosoftLists, ID = ID), {Status: "Concluído"}))

-- Criar um campo de pesquisa dinâmica
Search(MicrosoftLists, TextInput1.Text, "Nome")

