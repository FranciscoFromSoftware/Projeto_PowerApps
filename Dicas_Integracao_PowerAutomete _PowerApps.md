# ☑️🟣Dicas e Recomendações🔵▶️

## Otimização de Listas do Sharepoint no Power Apps

    🟦 Utilizar Power Automate para processar dados em segundo plano
    🟦 O Power Automate pode ser usado para reduzir o impacto das solicitações no Power Apps, processando dados de forma assíncrona.
    
    Como fazer:
    1. Criar um fluxo no Power Automate
    2. Configure um fluxo que busque dados do Microsoft Lists e os envie para o Power Apps.
    
    Exemplo de fluxo:
    1. Gatilho: "Quando um item é criado ou modificado no SharePoint".
    2. Ação: "Obter itens" para buscar registros filtrados.
    3. Ação: "Enviar dados para Power Apps".
    
    Chamar o fluxo no Power Apps
    No Power Apps, chame o fluxo para obter os dados sem sobrecarregar o aplicativo:
  
    1. Set(DadosLista, PowerAutomateFlow.Run())
    Isso reduz chamadas diretas ao SharePoint.
    
    Agendar atualizações automáticas
    1. Configure o Power Automate para atualizar os dados periodicamente, evitando consultas constantes.
