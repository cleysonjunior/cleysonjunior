## Cleyson Júnior Studzinski

**Coordenador de TI e desenvolvedor.** Chapecó/SC — remoto ou presencial na região.

Sete anos de TI, cinco deles na mesma empresa com progressão de analista a coordenador. Desde 2021, em paralelo, construo produtos próprios na [CJS Infotech](https://www.cjsinfotech.com.br): sistemas que rodam em produção, com cliente pagando e telefone tocando quando quebra.

---

### O que estou construindo

Mais de 10 sistemas próprios em produção na CJS Infotech, todos pensados para vender a mais de um cliente (marca e dados em configuração, código único).

| | |
|---|---|
| **CJS Track** | Gestão de frota com rastreamento GPS. Mostra o que rastreador comum não mostra: quanto sobrou de cada frete, já descontando combustível, pedágio e manutenção. PHP 8.4 + React, integrado ao Traccar. **Em produção, com assinatura recorrente ativa**: cadastro self-service, cobrança e liberação automáticas. |
| **Robô de vendas no WhatsApp** | Entende texto, áudio, foto e PDF, cota peça no catálogo real do fornecedor com a margem certa e cobra o Pix. Fila de provedores de LLM com queda automática, e **nunca inventa valor**: o preço é calculado no servidor, a IA só conversa. Aprende com as conversas toda madrugada. |
| **CJS Atendimento** | Painel de atendimento de WhatsApp multi-empresa: robô e humano na mesma tela, notificação no celular, sincronização depois de queda. |
| **Loja online da Stofer** | E-commerce integrado ao ERP TopSystem por API REST (6.223 produtos com preço e estoque da tabela de e-commerce). Pix direto pela API do Sicoob (mTLS) em homologação. |
| **Loja CJS** | 7.417 produtos sincronizados diariamente de distribuidores, preço pela margem, antifraude no cartão. |
| **CJS OS e Agenda** | Ordem de serviço de balcão multi-loja (senha do aparelho cifrada, aprovação de orçamento pelo WhatsApp) e agenda online para salão e barbearia. |
| **Wi-Fi pago no caminhão** | Hotspot MikroTik com túnel WireGuard até o servidor, cobrança por Pix e painel próprio. |
| **Lojas com montador 3D** | A cliente monta a caixa de presente em 3D: tema (64), cor, presentes e frase. Pedido e aceite dos termos gravados no servidor. |
| **Conecta Saúde** | Sistema para clínicas: captação, pré-agendamento e clube de fidelidade por assinatura. No ar em Campo Grande/MS. |

Sites entregues: [stofer.com.br](https://stofer.com.br) · [oticaberlim.com.br](https://oticaberlim.com.br) · [cjsinfotech.com.br](https://www.cjsinfotech.com.br)

Tudo em servidor próprio que eu administro: migrei a produção da AWS para a DigitalOcean, Cloudflare na frente com a origem fechada para o resto, Linux, MariaDB, Docker, backup off-site testado.

---

### Como eu trabalho

Produto pequeno não é desculpa para engenharia frouxa. O que está no ar aqui tem:

- **1.463 testes automatizados** só no CJS Track, rodados antes e depois de cada mudança. Boa parte deles existe para travar a lição de um incidente — *"modelo descontinuado não volta para a fila de fallback"*, *"áudio nunca vai para um modelo que não recebe áudio"*.
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

`PHP` `Python` `JavaScript` `React` `Next.js` `Laravel` `MariaDB/MySQL` `Linux` `Docker` `Cloudflare` `DigitalOcean` `MikroTik` `WireGuard` `Proxmox` `Active Directory` `Power BI` `Selenium` `APIs REST` `LLMs em produção`

### Formação

Engenharia da Computação (2023–2026, Centro Universitário União das Américas Descomplica): **aprovado nas 38 disciplinas obrigatórias** (2.640 h), falta só concluir as atividades complementares · Técnico em Manutenção de Computadores · Certificações em IA aplicada, cibersegurança, tuning de banco e cloud.

---

📍 Chapecó/SC · 🌐 [cjsinfotech.com.br](https://www.cjsinfotech.com.br) · 💼 [LinkedIn](https://www.linkedin.com/in/cleysonjunior/) · ✉️ contato@cjsinfotech.com.br
