Dicas e recomendações.

Ao usar microsft list devemos considerar algumas limitações.

⚠️⚠️ Limitações do Microsoft Lists no Power Apps
- Limite de exibição de lista (5.000 itens)
- O SharePoint impõe um limite de exibição de 5.000 itens por consulta, o que pode dificultar a manipulação de grandes volumes de dados.

↪️↪️ Como contornar:
- Use índices em colunas para melhorar a filtragem e ordenação.
- Crie exibições personalizadas para carregar apenas os dados necessários.
- Utilize Power Automate para dividir grandes conjuntos de dados em partes menores.
- Limite de delegação (2.000 registros)

⚠️⚠️ O Power Apps tem um limite de 2.000 registros para consultas delegáveis, o que significa que algumas funções não podem processar grandes volumes de dados diretamente.

↪️↪️ Como contornar:
- Use funções delegáveis como Filter, Search e LookUp para garantir que as consultas sejam processadas no servidor.
- Divida os dados em coleções menores e carregue apenas o necessário.
- Utilize Power BI para relatórios avançados e análise de grandes volumes de dados.

⚠️⚠️ Limite de solicitações por usuário
- Cada usuário tem um limite diário de solicitações ao Microsoft Lists, dependendo da licença do Power Apps.

↪️↪️ Como contornar:
- Reduza o número de chamadas ao SharePoint usando coleções locais (Collect).
- Armazene dados temporários no próprio aplicativo para evitar consultas repetitivas.
- Utilize Power Automate para processar dados em segundo plano e reduzir o impacto no Power Apps.

⚠️⚠️ Desempenho em listas grandes
- Listas com muitos registros podem ter tempos de carregamento mais longos e impactar a experiência do usuário.

↪️↪️ Como contornar:
- Carregue apenas os dados essenciais e evite exibir todos os registros de uma vez.
- Use paginação para carregar registros conforme o usuário navega.
- Utilize caching para armazenar dados temporariamente e evitar consultas repetitivas.

⚠️⚠️ Limitações de conectividade
- O desempenho pode ser afetado se houver muitas conexões simultâneas ao mesmo tempo.

↪️↪️ Como contornar:
- Evite consultas desnecessárias e otimize a lógica do aplicativo.
- Use gatilhos automáticos no Power Automate para atualizar dados sem sobrecarregar o sistema.
- Configure exibições filtradas para reduzir a quantidade de dados carregados.

