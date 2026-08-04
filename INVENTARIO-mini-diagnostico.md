# Inventário de blocos — mini-diagnostico.html

**Regra 1 — pergunta:** cada bloco responde **uma** pergunta, e cada pergunta é respondida
por **um** bloco. Se dois blocos respondem a mesma pergunta, um sai ou muda de função.

**Regra 2 — evidência:** cada bloco acrescenta um **tipo de evidência novo**. Se não
acrescenta, provavelmente não precisa existir.

| Bloco | Evidência |
|---|---|
| Resultado (números, barras) | numérica |
| Questão comentada | qualitativa — prova do método |
| Vídeo | transparência — quem está falando |
| Depoimentos | social — funcionou para alguém como eu |
| Garantia | redução de risco |
| Bônus | urgência (a única honesta: o Kit cobre a reta final) |

**As duas regras trabalham juntas, e a 2 é o freio da 1.** Sozinha, a regra 1 mandaria
cortar dois entre questão comentada, vídeo e depoimentos, porque os três respondem "como sei
que isso presta?". Seria erro: os três convencem **leitores diferentes** por mecanismos
diferentes. Quando dois blocos colidem na pergunta mas trazem evidências distintas, os dois
ficam — o que muda é a moldura, para a página não parecer que reabriu o assunto.

Corte só acontece quando colidem **na pergunta E na evidência**.

**Como usar:** antes de acrescentar qualquer bloco à página, escreva aqui a pergunta que ele
responde. Se a pergunta já estiver na tabela, o bloco não entra — ou o que já existe sai.

Levantado em 03/08/2026 sobre a versão de duas telas.

---

## As 8 perguntas da conversa, em ordem

1. Por que perdi pontos?
2. O que isso quer dizer?
3. Como vocês chegaram nessa conclusão?
4. O que ainda falta saber?
5. Como eu descubro isso?
6. Isso funciona?
7. Quem fez?
8. E se eu não gostar?

---

## Tela 1 — RESULTADO

| # | Bloco | Pergunta que responde | Status |
|---|---|---|---|
| 1 | `.rrecap` — nome + veredito do quadrante | 1. Por que perdi pontos? | **fica** (é a resposta canônica) |
| 2 | `.rlead` — "Você acertou X de 7" + `q.lead` | 1 | **funde no 1** |
| 3 | `.rmarg` — `traduzMargem()` "1 questão é a diferença entre 39 e 40" | *(nenhuma das 8)* — é aposta, não resposta | **fica**, é o único bloco de risco |
| 4 | `.bars` — duas barras | 1, em outra mídia | **fica** — gráfico não é repetição de texto |
| 5 | `.atalho` — "Já entendi — quero o diagnóstico completo" | 5. Como descubro? | **sai** — responde a pergunta 5 antes de a 4 existir |
| 6 | `q.p1` + `q.p2` — prosa do quadrante | 2. O que isso quer dizer? | **fica, mas podado** ↓ |
| 7 | "Leitura do teste" — Sob pressão / Ao trocar / O relógio | 2 | **colide com 6** |
| 8 | "Amostra do relatório" — `gabarito()` | 3. Como chegaram nisso? | **fica** — único bloco que PROVA |
| 9 | `lockbox()` — "O que ainda está fechado para você" | 4 **e** 5 misturadas | **quebrar em dois** ↓ |
| 10 | `.pull` — `L.ponto` | 2 | **colide com 6 e 7** |
| 11 | `.ponte` — título + preço + botão | 5. Como descubro? | vira o CTA da página única |

## Tela 2 — OFERTA

| # | Bloco | Pergunta que responde | Status |
|---|---|---|---|
| 12 | `.rrecap` repetido (gargalo + acertos + barras) | 1 | **sai** — não haverá segunda tela |
| 13 | Pivô + os 5 "agora precisa saber" | 4. O que falta saber? | **funde com o 9** |
| 14 | `stackOferta()` | 5. Como descubro? | **fica** — é a resposta canônica da 5 |
| 15 | `bonusKit()` | *(nenhuma das 8)* — "por que hoje?" | **fica** — única urgência honesta |
| 16 | `depoimentos()` | 6. Isso funciona? | **fica** |
| 17 | Vídeo de 28s | 3, mas evidência de **transparência** | **fica** — pela regra 2 não colide com o 8 (que é prova de método). Vira linha, não seção |
| 18 | Autor + garantia | 7 **e** 8 no mesmo bloco | **separar** |
| 19 | `.ofim` — fecho + checklist de 6 + CTA | 5 | **colide com 14** |
| 20 | `.rfoot` — aviso legal | — | fica |
| 21 | `.sticky` — barra fixa | CTA | fica |

---

## As colisões, em número

**21 blocos para 8 perguntas.** As reincidências:

| Pergunta | Quantas vezes é respondida | Blocos |
|---|---|---|
| 1. Por que perdi pontos? | **4×** | 1, 2, 4, 12 |
| 2. O que isso quer dizer? | **4×** | 6, 7, 10, e parte do 13 |
| 4. O que falta saber? | **3×** | parte do 6, 9, 13 |
| 5. Como descubro? | **4×** | 5, 11, 14, 19 |
| 3. Como chegaram nisso? | **2×** | 8, 17 |
| 6, 7, 8 | 1× cada | 16, 18, 18 |

É esta a doença: não é comprimento, é a página voltando quatro vezes ao mesmo tema com
palavras diferentes.

---

## As três colisões que exigem decisão (não são só corte)

### A. `q.p2` invade a seção 4

O texto do quadrante já pergunta o que a seção 4 existe para perguntar:

> *"O que falta descobrir é em que ponto exatamente o seu rendimento…"* (p2, quadrante 1)
> *"O que resolve é saber em que ponto da prova o seu rendimento…"* (p2, quadrante 3)

**Resolução:** `p2` fica só com a interpretação do resultado. Toda oração que comece com
"o que falta" ou "o que resolve" migra para a seção 4.

### B. `lockbox()` mistura pergunta e entrega

Hoje ele lista, lado a lado:

- *"Sua porcentagem em cada uma das 6"* → pergunta em aberto ✅ seção 4
- *"Por onde começar a estudar amanhã"* → é o **Plano de estudo**, uma entrega ❌ seção 5

**Resolução:** o lockbox vira a seção 4 e fica **só com perguntas**. Cada entrega que estava
ali migra para a `stackOferta`, sem repetir a pergunta que ela responde.

### C. Os três blocos da pergunta 2

`q.p1/p2` (prosa), "Leitura do teste" (as 3 observações) e `.pull` (L.ponto) respondem
todos "o que isso quer dizer". Os três são bons e nenhum é redundante *em conteúdo* — a
prosa interpreta o eixo, a leitura traz observações do comportamento, o pull fecha pelo
momento de vida.

**Resolução:** virar **um** bloco "O que isso significa" com três parágrafos de função
distinta, em vez de três seções que reabrem o mesmo assunto. É corte de moldura, não de texto.

---

## Estrutura aprovada da página única

| Seção | Pergunta | Fonte |
|---|---|---|
| 1. Resultado | Por que perdi pontos? | blocos 1+2+4 fundidos, + 3 |
| 2. O que isso significa | O que isso quer dizer? | blocos 6+7+10 fundidos |
| 3. Questão comentada | Como chegaram nisso? | bloco 8 (+ vídeo em uma linha) |
| 4. O que estas 7 não respondem | O que falta saber? | bloco 9 **só com perguntas** |
| 5. Plano de Recuperação da 1ª Fase | Como descubro? | blocos 14 + 15 |
| 6. Depoimentos | Isso funciona? | bloco 16 |
| 7. Gustavo | Quem fez? | metade do 18, compacto |
| 8. Garantia + CTA | E se eu não gostar? | outra metade do 18 + CTA |

**Proibido na seção 4:** qualquer substantivo de entrega (plano, ficha, simulado, cronograma).
**Proibido na seção 5:** "estudar no escuro", "descobrir o problema", "recuperar pontos" —
esses argumentos já cumpriram função nas seções 2 e 4.
