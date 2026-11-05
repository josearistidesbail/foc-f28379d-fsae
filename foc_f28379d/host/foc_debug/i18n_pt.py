"""i18n_pt.py - Portuguese (pt-BR) text for the host GUI, keyed by the English source.

Every key is the exact English string passed to ``tr()`` / ``N_()`` in gui.py,
param_docs.py and autotune.py (implicit string concatenation joined).
``test_i18n.py`` fails when a key is missing, stale, or when the ``{placeholder}``
names of a translation differ from its key.

Glossary (keep it consistent):
  current = corrente            voltage = tensão           DC bus = barramento CC
  gain = ganho                  current loop = malha de corrente
  speed loop = malha de velocidade                         bandwidth = banda
  field weakening = enfraquecimento de campo (FW)         dead zone = zona morta
  step (input) = degrau         setpoint/reference = referência
  overshoot = sobressinal       rise / settling = subida / acomodação
  scope = osciloscópio          capture = captura          sample = amostra
  fault = falha                 trip zone = trip zone      bench = bancada
  calibrate = calibrar          rotor alignment = alinhamento do rotor
  verify (step test) = verificação                        apply = aplicar
  device = dispositivo          shaft = eixo               torque = torque

Stays English in both languages (identifiers): state names (IDLE, RUN, FAULT…),
fault / warning / pos_status bit names, param names, scope channel names, enum
values, units, file names. Numbers keep the decimal point.
"""

from __future__ import annotations

PT: dict[str, str] = {
    # ---- worker / experiment helpers ---------------------------------------
    "not connected": "não conectado",
    "error: {e}": "erro: {e}",
    "ISR freq (Hz)": "Freq. da ISR (Hz)",
    "Speed-loop Ts (ms)": "Ts da malha de velocidade (ms)",
    "FW Vmax fraction": "Fração Vmax do FW",
    "Pole pairs": "Pares de polos",
    "device entered FAULT during the experiment":
        "o dispositivo entrou em FAULT durante o experimento",
    "timed out waiting for state {target}":
        "tempo esgotado esperando o estado {target}",
    "cleared fault; ": "falha limpa; ",
    "stopped run; ": "execução parada; ",
    "device did not return to IDLE (fault still asserted?)":
        "o dispositivo não voltou para IDLE (falha ainda ativa?)",
    "capture trigger did not complete (device left RUN, or no samples logged?)":
        "o gatilho da captura não completou (o dispositivo saiu de RUN, ou "
        "nenhuma amostra registrada?)",

    # ---- window, menu, connection bar ---------------------------------------
    "UFPR Formula - Inverter Manager": "UFPR Formula - Gerenciador do Inversor",
    "File": "Arquivo",
    "Save Parameters…": "Salvar parâmetros…",
    "Load Parameters…": "Carregar parâmetros…",
    "↻ Ports": "↻ Portas",
    "All": "Todas",
    "Show every serial port, including the probe's JTAG channel\n"
    "and the motherboard ttyS*/COM ports.":
        "Mostra todas as portas seriais, inclusive o canal JTAG do probe\n"
        "e as portas ttyS*/COM da placa-mãe.",
    "Connect": "Conectar",
    "Disconnect": "Desconectar",
    "Ping": "Ping",
    "disconnected": "desconectado",
    "Port:": "Porta:",
    "(no serial ports found)": "(nenhuma porta serial encontrada)",
    "connecting to {port}…": "conectando a {port}…",
    "connected to {port}": "conectado a {port}",
    "connected: {port}": "conectado: {port}",
    "connect failed: {msg}": "falha ao conectar: {msg}",
    "Ready. Pick a port and Connect.": "Pronto. Escolha uma porta e clique em Conectar.",
    "Made by Jose Aristides Bail": "Feito por Jose Aristides Bail",

    # ---- state machine + references ------------------------------------------
    "State machine": "Máquina de estados",
    "State:": "Estado:",
    "Run": "Rodar",
    "Calibrate": "Calibrar",
    "Re-run offset calibration + rotor alignment, then return to IDLE":
        "Refaz a calibração de offset + alinhamento do rotor e volta para IDLE",
    "Stop": "Parar",
    "Clear fault": "Limpar falha",
    "Mode:": "Modo:",
    "Torque": "Torque",
    "Speed": "Velocidade",
    "Torque: iq_ref commanded directly.  Speed: speed PI drives iq_ref from "
    "the RPM setpoint. Switchable live (bumpless).":
        "Torque: iq_ref comandado diretamente.  Velocidade: o PI de velocidade "
        "gera iq_ref a partir da referência em RPM. Pode trocar ao vivo "
        "(sem solavanco).",
    "Torque (Nm):": "Torque (Nm):",
    "Torque (%):": "Torque (%):",
    "Speed (RPM):": "Velocidade (RPM):",
    "Speed (%):": "Velocidade (%):",
    "Percentage mode — Speed: % of rated RPM; Torque: % of peak torque "
    "(i_peak × Kt)":
        "Modo percentual — Velocidade: % da RPM nominal; Torque: % do torque "
        "de pico (i_peak × Kt)",
    "Rated:": "Nominal:",
    "Apply": "Aplicar",
    "Torque mode: write iq_ref (Nm / Kt → A)":
        "Modo torque: escreve iq_ref (Nm / Kt → A)",
    "Write omega_ref (% of rated RPM → electrical rad/s)":
        "Escreve omega_ref (% da RPM nominal → rad/s elétrico)",
    "Write omega_ref (RPM → electrical rad/s)":
        "Escreve omega_ref (RPM → rad/s elétrico)",
    "Write iq_ref (% of peak torque → A)":
        "Escreve iq_ref (% do torque de pico → A)",
    "Write iq_ref (Nm / Kt → A)": "Escreve iq_ref (Nm / Kt → A)",
    "Measured:": "Medida:",
    "Live DC-bus voltage from the device (read-only 'vbus' param)":
        "Tensão do barramento CC ao vivo, lida do dispositivo (param 'vbus', "
        "somente leitura)",
    "{op} → {state}": "{op} → {state}",
    "ping ok: {ms:.2f} ms round-trip": "ping ok: {ms:.2f} ms ida e volta",
    "control mode → {mode} ({status})": "modo de controle → {mode} ({status})",

    # ---- parameter tables -----------------------------------------------------
    "Auto-refresh values": "Atualizar valores automaticamente",
    "Refresh values": "Atualizar valores",
    "Filter:": "Filtro:",
    "Type to filter parameters by name…  (Ctrl+F)":
        "Digite para filtrar parâmetros pelo nome…  (Ctrl+F)",
    "References": "Referências",
    "Gains": "Ganhos",
    "Config": "Config.",
    "Sensorless": "Sem sensor",
    "Advanced": "Avançado",
    "Motor": "Motor",
    "Autotune": "Autoajuste",
    "Tune D & Q together (current loop — needs IDLE)":
        "Ajustar D e Q juntos (malha de corrente — requer IDLE)",
    "kp  (D = Q):": "kp  (D = Q):",
    "ki   (D = Q):": "ki   (D = Q):",
    "Double-click a writable value and press Enter to write. needs_idle params "
    "only accepted in IDLE state.":
        "Clique duas vezes num valor editável e pressione Enter para escrever. "
        "Params needs_idle só são aceitos no estado IDLE.",
    "id": "id",
    "name": "nome",
    "type": "tipo",
    "flags": "flags",
    "value (edit + Enter)": "valor (editar + Enter)",
    "status": "status",
    "param list failed: {msg}": "falha ao listar params: {msg}",
    "write {name} = {value} → {status}": "escrita {name} = {value} → {status}",
    "param '{name}' not found": "param '{name}' não encontrado",

    # ---- scope ------------------------------------------------------------------
    "Start scope": "Iniciar osciloscópio",
    "Stop scope": "Parar osciloscópio",
    "decim:": "decim:",
    "interval ms:": "intervalo ms:",
    "history:": "histórico:",
    "Clear": "Limpar",
    "Save last to CSV…": "Salvar última em CSV…",
    "Signals:": "Sinais:",
    "scope signals: {names}": "sinais do osciloscópio: {names}",
    "scope started": "osciloscópio iniciado",
    "scope error: {msg}": "erro no osciloscópio: {msg}",
    "scope recovered": "osciloscópio recuperado",
    "no capture yet": "nenhuma captura ainda",
    "Save capture": "Salvar captura",
    "saved {path}": "salvo {path}",

    # ---- Motor tab --------------------------------------------------------------
    "Motor & loop constants (used by the autotuner)":
        "Constantes do motor e das malhas (usadas pelo autoajuste)",
    "Reset to device values": "Restaurar valores do dispositivo",
    "Drop local edits and reload the values reported by the device.":
        "Descarta as edições locais e recarrega os valores informados pelo "
        "dispositivo.",
    "These are read from the device on connect and feed the Autotune tab. "
    "Edit any field to override it locally (the firmware is not changed); "
    "vbus tracks the live bus until you edit it. Use Reset to restore the "
    "device values.":
        "Estes valores são lidos do dispositivo ao conectar e alimentam a aba "
        "Autoajuste. Edite qualquer campo para sobrescrevê-lo localmente (o "
        "firmware não é alterado); vbus segue o barramento ao vivo até você "
        "editá-lo. Use Restaurar para voltar aos valores do dispositivo.",
    "motor constants reset to device values":
        "constantes do motor restauradas para os valores do dispositivo",

    # ---- Autotune: step-response panel -----------------------------------------
    "Target (ref)": "Alvo (ref)",
    "Final (measured)": "Final (medido)",
    "Steady-state error": "Erro em regime",
    "DC bus": "Barramento CC",
    "Peak": "Pico",
    "min mean |Iphase|": "mín. média |Ifase|",
    "Overshoot": "Sobressinal",
    "Pre-step noise σ": "Ruído pré-degrau σ",
    "Rise 10–90%": "Subida 10–90%",
    "Sample period": "Período de amostragem",
    "Settling (±2%)": "Acomodação (±2%)",
    "Window": "Janela",
    "Eff. bandwidth": "Banda efetiva",
    "Trigger sample": "Amostra do gatilho",
    "Step response — run a verify": "Resposta ao degrau — rode uma verificação",
    "iq step decim:": "decim do degrau iq:",
    "Fit": "Ajustar",
    "Auto-range both axes to the visible signals":
        "Ajusta os dois eixos automaticamente aos sinais visíveis",
    "Save step to CSV…": "Salvar degrau em CSV…",
    "Write the last step capture (all channels) to CSV":
        "Grava a última captura de degrau (todos os canais) em CSV",
    "log: (created on first step)": "log: (criado no primeiro degrau)",
    "Every step this session is appended to a CSV pair under step_logs/ — one "
    "row per sample, plus a one-row-per-step summary with metrics, rotor angle "
    "and the gains in force.":
        "Cada degrau desta sessão é acrescentado a um par de CSVs em step_logs/ "
        "— uma linha por amostra, mais um resumo com uma linha por degrau com "
        "as métricas, o ângulo do rotor e os ganhos em vigor.",
    "Open log folder": "Abrir pasta de logs",
    "Step detail": "Detalhes do degrau",
    "→ {ms:.1f} ms window @ {us:.0f} µs": "→ janela de {ms:.1f} ms @ {us:.0f} µs",
    "{name} (measured)": "{name} (medido)",
    "{n} samples, {ms:.2f} ms": "{n} amostras, {ms:.2f} ms",
    "< 1 sample": "< 1 amostra",
    "not within {ms:.1f} ms window": "fora da janela de {ms:.1f} ms",

    # ---- Autotune: manual gains -------------------------------------------------
    "Manual gains — type values, apply, and step":
        "Ganhos manuais — digite os valores, aplique e dê o degrau",
    "Load from device": "Carregar do dispositivo",
    "Copy the gains currently in the firmware into these boxes and resume "
    "tracking them on every value refresh.":
        "Copia os ganhos atuais do firmware para estes campos e volta a "
        "acompanhá-los a cada atualização de valores.",
    "Copy computed ↓": "Copiar calculados ↓",
    "Fill these boxes with the gains the autotuner computed in the boxes "
    "below, as a starting point for hand tweaking.":
        "Preenche estes campos com os ganhos que o autoajuste calculou nos "
        "quadros abaixo, como ponto de partida para o ajuste manual.",
    "mirror D → Q": "espelhar D → Q",
    "Editing kp_d/ki_d also writes kp_q/ki_q (Ld ≈ Lq on this motor).":
        "Editar kp_d/ki_d também escreve kp_q/ki_q (Ld ≈ Lq neste motor).",
    "Current loop": "Malha de corrente",
    "Speed loop": "Malha de velocidade",
    "Field weakening": "Enfraq. de campo",
    "Apply current gains": "Aplicar ganhos de corrente",
    "Apply speed gains": "Aplicar ganhos de veloc.",
    "Apply FW gains": "Aplicar ganhos de FW",
    "iq step (A):": "degrau de iq (A):",
    "RPM step:": "degrau de RPM:",
    "Apply + Verify (step iq)": "Aplicar + Verificar (iq)",
    "Apply + Verify (step RPM)": "Aplicar + Verificar (RPM)",
    "Writes these kp/ki (needs IDLE), runs in torque mode, steps iq, and plots "
    "the response below — same experiment as the model-based box. Energizes "
    "the motor — keep the shaft clear.":
        "Escreve estes kp/ki (requer IDLE), roda em modo torque, aplica um "
        "degrau em iq e plota a resposta — o mesmo experimento do quadro "
        "baseado em modelo. Energiza o motor — mantenha o eixo livre.",
    "Writes these kp_w/ki_w (needs IDLE), runs in speed mode, steps the RPM "
    "setpoint, and captures omega. Spins the motor.":
        "Escreve estes kp_w/ki_w (requer IDLE), roda em modo velocidade, aplica "
        "um degrau na referência de RPM e captura omega. Gira o motor.",
    "Boxes track the device until you edit one; \"Load from device\" resumes "
    "tracking. Applying needs IDLE — a run is stopped and a latched fault "
    "cleared automatically.":
        "Os campos acompanham o dispositivo até você editar um; \"Carregar do "
        "dispositivo\" volta a acompanhar. Aplicar requer IDLE — uma execução é "
        "parada e uma falha travada é limpa automaticamente.",
    "manual gains: reloading from device":
        "ganhos manuais: recarregando do dispositivo",
    "manual gains: copied {n} computed value(s)":
        "ganhos manuais: {n} valor(es) calculado(s) copiado(s)",

    # ---- Autotune: model-based boxes --------------------------------------------
    "Current loop (Id/Iq) — model-based, exact":
        "Malha de corrente (Id/Iq) — baseada em modelo, exata",
    "Target bandwidth (Hz):": "Banda desejada (Hz):",
    "Applies the gains (needs IDLE), runs in torque mode, steps iq, and "
    "captures the response. The first Run after boot auto-aligns (~3 s spin). "
    "Energizes the motor — keep the shaft clear.":
        "Aplica os ganhos (requer IDLE), roda em modo torque, aplica um degrau "
        "em iq e captura a resposta. O primeiro Rodar após o boot faz o "
        "alinhamento automático (~3 s girando). Energiza o motor — mantenha o "
        "eixo livre.",
    "Speed loop — symmetric optimum": "Malha de velocidade — ótimo simétrico",
    "SO factor a (2–4):": "Fator a do OS (2–4):",
    "Inertia J (kg·m²):": "Inércia J (kg·m²):",
    "Measure Km…": "Medir Km…",
    "Briefly spins the motor (torque step) to estimate the speed plant gain "
    "Km and back out J. Keep the shaft free; start small.":
        "Gira o motor brevemente (degrau de torque) para estimar o ganho Km da "
        "planta de velocidade e deduzir J. Mantenha o eixo livre; comece com "
        "pouco.",
    "Km probe iq (A):": "iq de teste do Km (A):",
    "Km: (from J)": "Km: (a partir de J)",
    "Applies the gains (needs IDLE), runs in speed mode, steps the RPM "
    "setpoint, and captures omega. Spins the motor — shaft clear.":
        "Aplica os ganhos (requer IDLE), roda em modo velocidade, aplica um "
        "degrau na referência de RPM e captura omega. Gira o motor — eixo "
        "livre.",
    "Field weakening — estimate only": "Enfraquecimento de campo — só estimativa",
    "Target FW bandwidth (Hz):": "Banda desejada do FW (Hz):",
    "Vmax fraction:": "Fração de Vmax:",
    "FW gains are a starting estimate: the loop engages only above base speed "
    "and its gain scales with speed — verify on hardware.":
        "Os ganhos de FW são uma estimativa inicial: a malha só atua acima da "
        "velocidade base e seu ganho varia com a velocidade — verifique no "
        "hardware.",
    "invalid: {msg}": "inválido: {msg}",
    "   ⚠ above ISR/10": "   ⚠ acima de ISR/10",
    "measured": "medido",
    "from J": "a partir de J",
    "base≈{we:.0f} elec rad/s (~{rpm:.0f} rpm)":
        "base≈{we:.0f} rad/s elét. (~{rpm:.0f} rpm)",

    # ---- Autotune: apply / verify / measure --------------------------------------
    "current": "corrente",
    "speed": "velocidade",
    "field-weakening": "enfraquecimento de campo",
    "manual current": "corrente (manual)",
    "manual speed": "velocidade (manual)",
    "manual field-weakening": "enfraquecimento de campo (manual)",
    "no valid {which} gains computed": "nenhum ganho válido de {which} calculado",
    "no valid {which} gains": "nenhum ganho válido de {which}",
    "apply failed: {msg}": "falha ao aplicar: {msg}",
    "{which} gains applied: ": "ganhos de {which} aplicados: ",
    "{which} verify: applying gains + stepping iq…":
        "verificação de {which}: aplicando ganhos + degrau em iq…",
    "{which} verify: applying gains + stepping RPM…":
        "verificação de {which}: aplicando ganhos + degrau de RPM…",
    "measuring Km: torque ramp…": "medindo Km: rampa de torque…",
    "experiment failed: {msg}": "experimento falhou: {msg}",
    "step log: write failed": "log de degraus: falha na escrita",
    "step log: {msg}": "log de degraus: {msg}",
    "log: {file}  (1 step)": "log: {file}  (1 degrau)",
    "log: {file}  ({n} steps)": "log: {file}  ({n} degraus)",
    "Every step this session is appended to:\n{samples}   (samples)\n"
    "{summary}   (one row per step)":
        "Cada degrau desta sessão é acrescentado a:\n{samples}   (amostras)\n"
        "{summary}   (uma linha por degrau)",
    "no step capture yet": "nenhuma captura de degrau ainda",
    "Save step capture": "Salvar captura do degrau",
    "verify: channel {chan} not in capture":
        "verificação: canal {chan} ausente da captura",
    "{which} verify — step {chan} to {ref:.4g} {unit}":
        "verificação de {which} — degrau de {chan} para {ref:.4g} {unit}",
    "HW TRIP ZONE FIRED during this step (tz_trip {before} → {after}, "
    "module_fault=0x{mf:04X}). The bridge was latched in active-short — the "
    "current loop had no authority, so the metrics below describe the trip, "
    "not the tuning.":
        "TRIP ZONE DE HW DISPAROU durante este degrau (tz_trip {before} → "
        "{after}, module_fault=0x{mf:04X}). A ponte ficou travada em "
        "curto ativo — a malha de corrente não tinha autoridade, então as "
        "métricas abaixo descrevem o disparo, não a sintonia.",
    "step analyzed": "degrau analisado",
    "step analyzed — did not settle inside the window":
        "degrau analisado — não acomodou dentro da janela",
    "{which} verify: overshoot {os:.1f}%, rise {rise:.2f} ms":
        "verificação de {which}: sobressinal {os:.1f}%, subida {rise:.2f} ms",
    "could not analyze step ({reason}) — try a larger step or different "
    "decimation. Levels below are still valid.":
        "não foi possível analisar o degrau ({reason}) — tente um degrau maior "
        "ou outra decimação. Os níveis abaixo continuam válidos.",
    "{which} verify: {reason}": "verificação de {which}: {reason}",
    "Km: omega channel missing from capture": "Km: canal omega ausente da captura",
    "Km measure: no usable ramp (is the shaft free? try larger iq)":
        "medição de Km: nenhuma rampa utilizável (o eixo está livre? tente um "
        "iq maior)",
    "Km={km:.4g} (measured)": "Km={km:.4g} (medido)",
    "Km measure — omega ramp at iq = {iq:.4g} A":
        "medição de Km — rampa de omega com iq = {iq:.4g} A",
    "Km = {km:.4g} rad/s²/A  (slope {slope:.4g} rad/s² over samples "
    "{i0}..{n}), implied J ≈ {j:.3g} kg·m²":
        "Km = {km:.4g} rad/s²/A  (inclinação {slope:.4g} rad/s² nas amostras "
        "{i0}..{n}), J implícito ≈ {j:.3g} kg·m²",
    "Km measured: {km:.4g} (rad/s²/A), implied J≈{j:.3g} kg·m²":
        "Km medido: {km:.4g} (rad/s²/A), J implícito≈{j:.3g} kg·m²",

    # ---- parameter files (JSON) ----------------------------------------------------
    "no parameters loaded — connect and refresh first":
        "nenhum parâmetro carregado — conecte e atualize primeiro",
    "Save parameters": "Salvar parâmetros",
    "parameters saved → {path}": "parâmetros salvos → {path}",
    "Load parameters": "Carregar parâmetros",
    "load failed: {msg}": "falha ao carregar: {msg}",
    "no parameters known — connect and refresh before loading":
        "nenhum parâmetro conhecido — conecte e atualize antes de carregar",
    "loaded {n} param(s) from {path}": "{n} param(s) carregado(s) de {path}",
    ", {n} skipped": ", {n} ignorado(s)",
    " (table pre-filled; connect to write to device)":
        " (tabela pré-preenchida; conecte para escrever no dispositivo)",

    # ---- state banner ----------------------------------------------------------------
    "SENSORLESS ({status})": "SEM SENSOR ({status})",

    # ---- language menu ------------------------------------------------------------------
    "Language": "Idioma",
    "The new language applies the next time the program starts.":
        "O novo idioma vale a partir da próxima vez que o programa iniciar.",
    "Restart now": "Reiniciar agora",
    "Later": "Depois",
    "Disconnect first to restart now.": "Desconecte primeiro para reiniciar agora.",
    "restart failed — start the program again by hand":
        "falha ao reiniciar — abra o programa de novo manualmente",

    # ---- param_docs.py (tooltip access line) ---------------------------------------------
    "read-only": "somente leitura",
    "write only in IDLE": "escrita só em IDLE",
    "LIVE (write any time)": "AO VIVO (escrita a qualquer momento)",
    "No description in this host version (firmware newer than the GUI?).":
        "Sem descrição nesta versão do host (firmware mais novo que a GUI?).",

    # ---- autotune.py (errors / step-analysis reasons, translated on display) -------------
    "L and Ts must be positive": "L e Ts devem ser positivos",
    "J must be positive": "J deve ser positivo",
    "Km must be positive": "Km deve ser positivo",
    "Km, T_eq, Ts_speed must be positive": "Km, T_eq, Ts_speed devem ser positivos",
    "a must be positive": "a deve ser positivo",
    "FW plant gain non-positive (check vbus/we_ref/Ld)":
        "ganho da planta do FW não positivo (confira vbus/we_ref/Ld)",
    "flux_vs must be positive": "flux_vs deve ser positivo",
    "too few samples": "amostras de menos",
    "no detectable step": "nenhum degrau detectável",
    "step edge not in window": "borda do degrau fora da janela",
}
