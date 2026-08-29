## Cleyson Júnior Studzinski

**Coordenador de TI e desenvolvedor.** Chapecó/SC — remoto ou presencial na região.

Sete anos de TI, cinco deles na mesma empresa com progressão de analista a coordenador. Desde 2021, em paralelo, construo produtos próprios na [CJS Infotech](https://www.cjsinfotech.com.br): sistemas que rodam em produção, com cliente pagando e telefone tocando quando quebra.

---

### O que estou construindo

| | |
|---|---|
| **CJS Track** | Gestão de frota com rastreamento GPS. Mostra o que rastreador comum não mostra: quanto sobrou de cada viagem, já descontando combustível, pedágio e manutenção. PHP 8.4 + React, integrado ao Traccar. **Em produção, com assinatura recorrente ativa** — cadastro self-service, cobrança e liberação automáticas. |
| **Chatbot de IA no WhatsApp** | Atendimento que entende texto, áudio e foto, cota preço do catálogo real do distribuidor e passa para humano na hora certa. Fila de provedores de LLM com queda automática, e **nunca inventa valor** — o preço é calculado no servidor, a IA só conversa. |
| **Conecta Saúde** | Sistema para clínicas: captação, pré-agendamento e clube de fidelidade por assinatura. No ar em Campo Grande/MS. |

Tudo em servidor próprio que eu administro: Linux, MariaDB, Docker, Cloudflare, backup off-site testado.

---

### Como eu trabalho

Produto pequeno não é desculpa para engenharia frouxa. O que está no ar aqui tem:

- **700+ testes automatizados**, rodados antes e depois de cada mudança. Boa parte deles existe para travar a lição de um incidente — *"modelo descontinuado não volta para a fila de fallback"*, *"áudio nunca vai para um modelo que não recebe áudio"*.
- **Backup off-site com restauração provada**, não presumida: cópia diária para object storage e um teste de restauração todo mês.
- **Vigia de 19 rotinas automáticas**: cada uma bate ponto só quando termina bem, e o que não bateu vira alerta no WhatsApp. Mais um vigia separado só para erro fatal — o heartbeat pega a queda permanente, não a intermitente.
- **Observabilidade e segurança**: rastreamento de erro no servidor e no front, TLS e WAF na frente, fail2ban, auditoria de permissões e de credenciais.
- **Medir antes de otimizar.** A análise de IA do painel levava 49s porque tentava três provedores mortos antes do que funcionava; reordenada com base na medição, passou a 3s.
- **Toda decisão não-óbvia fica escrita no código**, junto com o incidente que a motivou. Quem chegar depois — inclusive eu, seis meses depois — não precisa redescobrir do zero.

---

### O que fiz antes

**Coordenador de TI** · ACB Revenda Ambev · mar/2026–jul/2026
TI de 5 unidades em SC e PR, equipe de 3 técnicos, 500+ usuários e 500+ chamados/mês sob SLA. Proxmox com backup diário de 10+ VMs (Linux, Windows, VMware, Hyper-V). Deploy de máquina caiu de **2h para 30 min** com MDT/Windows ADK. Servidor local de IA rodando LLMs open-source para manter dado confidencial dentro da rede. Renegociação de telecom com **~15% de redução** no custo mensal.

**Desenvolvedor — RPA e Dados** · ACB Revenda Ambev · jan/2025–mar/2026
Robô em Python/Selenium/PyAutoGUI para sistema legado sem HTML legível (IE Mode): lançamento de **2 minutos para 12 segundos**, em ~1.000 transações/dia — 8h de trabalho manual viraram 2h autônomas. Data Lake, Power Automate, 20+ relatórios em Power BI.

**Analista de TI** · ACB Revenda Ambev · jul/2021–jan/2025
Suporte N1/N2/N3 a 500+ usuários locais e remotos, 500+ chamados/mês sob SLA. Rede corporativa: switches gerenciáveis UniFi, monitoramento de links, regras de firewall. Acessos e GPOs no Active Directory, projetos de expansão de unidades.

**Assistente de TI** · Cooperativa Rede Sul · nov/2020–mai/2021
Service Desk N1 e manutenção preventiva e corretiva do parque. Reestruturação do cabeamento estruturado da LAN.

**Assistente de Suporte de TI** · Ases Express · mar/2019–ago/2020
Suporte a 100+ agências parceiras credenciadas. Monitoramento e processamento automatizado de arquivos EDI entre matriz e agências.

---

### Stack

`PHP` `Python` `JavaScript` `React` `Next.js` `Laravel` `MariaDB/MySQL` `Linux` `Docker` `Proxmox` `Active Directory` `Power BI` `Selenium` `APIs REST` `LLMs em produção`

### Formação

Engenharia de Computação (cursando, 2023–2027) · Técnico em Manutenção de Computadores · Certificações em IA aplicada, cibersegurança, tuning de banco e cloud.

---

📍 Chapecó/SC · 🌐 [cjsinfotech.com.br](https://www.cjsinfotech.com.br) · 💼 [LinkedIn](https://www.linkedin.com/in/cleysonjunior/) · ✉️ contato@cjsinfotech.com.br
