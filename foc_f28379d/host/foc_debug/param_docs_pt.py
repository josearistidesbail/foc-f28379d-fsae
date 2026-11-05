"""param_docs_pt.py - Portuguese (pt-BR) parameter help, parallel to param_docs.PARAM_DOCS.

Same keys, same order, same (unit, text) shape and the same writing rules as
param_docs.py (test_param_docs.py fails if the key sets differ). Param names,
firmware identifiers and numbers stay exactly as in the English text.
"""

from __future__ import annotations

PARAM_DOCS_PT: dict[str, tuple[str, str]] = {
    # ---- referências ao vivo ---------------------------------------------
    "id_ref": ("A",
        "Referência de corrente do eixo d. Em RUN a ISR a reescreve a cada tick "
        "(nominal 0 + corrente de enfraquecimento de campo), então uma escrita do "
        "host só vale fora de RUN. Use step_go/step_axis=0 para um degrau no eixo d."),
    "iq_ref": ("A",
        "Comando de corrente do eixo q (torque) no modo torque. Limitado a ±iq_max "
        "na ISR. No modo velocidade o PI de velocidade o sobrescreve."),
    "omega_ref": ("rad/s elét.",
        "Referência de velocidade do modo velocidade (control_mode = 1), em rad/s "
        "ELÉTRICOS (rpm = ω·60/(2π·pole_pairs)). Segue uma rampa de "
        "SPEED_RAMP_RAD_S2 (EMRAX: 80 rad/s²)."),

    # ---- ganhos ------------------------------------------------------------
    "kp_d": ("V/A",
        "Ganho proporcional do PI de corrente do eixo d. O PI_run da TI é em FORMA "
        "SÉRIE (Ui += ki·kp·err), então aumentar kp aumenta também a ação integral. "
        "Frequência de cruzamento ≈ kp/Ld. Valor de boot (EMRAX): 0.5."),
    "ki_d": ("por tick",
        "Ganho integral do PI de corrente do eixo d, forma série, por tick de "
        "100 µs: o zero do PI fica em ki/Ts rad/s. ≈ Rs·Ts/Ld cancela o polo da "
        "planta. Valor de boot (EMRAX): 0.0113."),
    "kp_q": ("V/A",
        "Ganho proporcional do PI de corrente do eixo q (forma série, como kp_d). "
        "Frequência de cruzamento ≈ kp/Lq. Sintonize só com dtc_en = 1, senão você "
        "está sintonizando contra a zona morta. Valor de boot (EMRAX): 0.5."),
    "ki_q": ("por tick",
        "Ganho integral do PI de corrente do eixo q, forma série, por tick de "
        "100 µs (zero em ki/Ts rad/s). Valor de boot (EMRAX): 0.0113."),
    "kp_w": ("A por rad/s elét.",
        "Ganho proporcional do PI de velocidade. Mantenha a frequência de "
        "cruzamento da malha de velocidade ≤ 1/4 da banda da estimativa de "
        "velocidade (res_pll_bw, ou obs_pll_bw sem sensor), senão a malha fica "
        "instável. Valor de boot (EMRAX): 0.35."),
    "ki_w": ("por tick",
        "Ganho integral do PI de velocidade, forma série, por tick de 1 ms (zero em "
        "ki/Ts rad/s: 0.02 → 20 rad/s). Valor de boot (EMRAX): 0.02."),
    "kp_fw": ("",
        "Ganho proporcional do regulador de enfraquecimento de campo (PI série sobre "
        "o erro de tensão ao quadrado, |Vdq|² vs vmax_fw²). kp e ki precisam ser "
        "ambos não nulos, senão o integrador não faz nada. Não sintonizado em "
        "hardware. Valor de boot (EMRAX): 0.001."),
    "ki_fw": ("por tick",
        "Ganho integral do regulador de enfraquecimento de campo (forma série, por "
        "tick de 100 µs). Não sintonizado em hardware. Valor de boot (EMRAX): 0.05."),

    # ---- medição de corrente / phase-ID / ALIGN ------------------------------
    "isense_recon": ("enum",
        "Reconstrói a corrente de uma fase a partir das outras duas pela LKC "
        "(Iu+Iv+Iw = 0), para um canal de medição morto. 0 nenhuma, 1 U, 2 V, 3 W. "
        "Normalmente nenhuma."),
    "isense_map": ("enum",
        "Qual fase do motor cada canal físico de medição (A/B/C) mede: uma das seis "
        "permutações. O phase-ID do ALIGN o escreve quando phase_id_en = 1. "
        "FE_UFPR 4.0: 0 (A=U B=V C=W)."),
    "isense_inv": ("bits",
        "Inversão do sinal da corrente por canal: bit0 = canal A, bit1 = B, "
        "bit2 = C (0..7). O phase-ID do ALIGN o escreve quando phase_id_en = 1. "
        "FE_UFPR 4.0: 0."),
    "phase_id_en": ("0/1",
        "1 = o ALIGN roda primeiro o phase-ID: três patamares em malha aberta a "
        "0/120/240° elét. medem o mapa de canais e os sinais antes de qualquer "
        "corrente em malha fechada. Um resultado rejeitado gera a falha "
        "CURRENT_SENSE. Valor de boot (FE_UFPR 4.0): 1."),
    "phase_id_a": ("A",
        "Corrente-alvo dos patamares do phase-ID: a razão cíclica sobe em rampa até "
        "o maior canal alcançá-la e então congela nos três patamares. ≥ 0. "
        "Valor de boot (FE_UFPR 4.0): 3 A (1 A é rejeitado: a zona morta come os "
        "braços de -I/2)."),
    "align_id_a": ("A",
        "Corrente de eixo d dos estágios de ALIGN em malha fechada (acomodação, "
        "varredura de calibração do resolver, varredura de offset). Precisa arrastar "
        "o rotor vencendo o atrito e o cogging. Limitado a [0, IQ_REF_MAX]. "
        "Valor de boot (EMRAX): 8 A."),

    # ---- limites / compensação de tempo morto --------------------------------
    "iq_max": ("A",
        "Limite da corrente q comandada: comando de torque, saída do PI de "
        "velocidade e injetor de degrau. Limitado a [0, IQ_REF_MAX]; é seguro "
        "reduzi-lo em operação. Valor de boot (bancada FE_UFPR 4.0): 10 A."),
    "vmax_frac": ("× Vbus/2",
        "Limite de tensão do PI de corrente: vmax = vmax_frac·Vbus/2. Limitado a "
        "[0, VDQ_MAX_FRACTION]. Restringe o que um PI instável consegue aplicar. "
        "Precisa superar a zona morta do inversor (~0.05), senão não circula "
        "corrente. Valor de boot (bancada FE_UFPR 4.0): 0.15."),
    "oc_trip_a": ("A",
        "Disparo de sobrecorrente de fase por software, verificado a cada ISR em "
        "RUN/ALIGN. Limitado a [0, OC_TRIP_CEIL] (130 A no caminho LEM, que satura "
        "em ±150 A). Valor de boot (bancada FE_UFPR 4.0): 40 A."),
    "dtc_en": ("0/1",
        "Compensação de tempo morto / queda nos dispositivos em RUN e no ALIGN em "
        "malha fechada. Sem ela a zona morta da ponte deixa a malha de corrente sem "
        "autoridade perto de corrente zero. Só sintonize ganhos com ela ligada. "
        "Valor de boot (FE_UFPR 4.0): 1."),
    "dtc_duty": ("razão cíclica",
        "Parcela da compensação independente do barramento: tempo morto puro "
        "(deadband·fsw). Limitado a [0, 0.15]. Valor de boot (FE_UFPR 4.0): 0.015 "
        "(1.5 µs a 10 kHz)."),
    "dtc_v": ("V",
        "Parcela fixa da queda nos dispositivos (Vce + Vf), dividida pela tensão "
        "atual do barramento. Limitado a [0, 5]. Valor de boot (FE_UFPR 4.0): 1.0, "
        "de um ensaio de eixo d com rotor parado. Se aumentá-lo piora a malha, você "
        "sobrecompensou: recue."),
    "dtc_ith": ("A",
        "Largura da rampa linear em torno do cruzamento por zero de cada corrente "
        "de fase (em vez de um sign() abrupto). Limitado a [0.1, 100]. Pequeno "
        "demais causa chattering, grande demais subcompensa. "
        "Valor de boot (FE_UFPR 4.0): 0.5."),
    "dtc_src": ("enum",
        "Corrente que alimenta a rampa do tempo morto: 0 = correntes de fase "
        "medidas (amplifica o ruído do sensor em ~2.9 V/A por fase dentro da rampa "
        "— chiado audível com torque zero), 1 = as referências id/iq levadas de "
        "volta às fases (sem ruído, zero com torque zero). Valor de boot: "
        "FE_UFPR 4.0 (EMRAX) 1, outros builds 0."),

    # ---- modos de controle -------------------------------------------------
    "decouple_en": ("0/1",
        "Feedforward de acoplamento cruzado + FCEM: ff_d = −ωe·Lq·iq_ref, "
        "ff_q = ωe·(Ld·id_ref + λ). Importa em transitórios e em alta "
        "velocidade/corrente; pouco efeito em corrente baixa. Valor de boot: 0."),
    "control_mode": ("enum",
        "Malha externa: 0 = torque (iq_ref direto), 1 = velocidade (o PI de "
        "velocidade sobre omega_ref comanda iq). A troca é sem solavanco "
        "(bumpless) nos dois sentidos."),
    "fw_en": ("0/1",
        "Enfraquecimento de campo: um regulador de tensão leva id a valores "
        "negativos quando |Vdq| atinge fw_vmax_frac·Vbus/2. Forçado desligado no "
        "modo sem sensor. Ainda não testado em hardware. Valor de boot: 0."),
    "module_faults_en": ("0/1",
        "1 = falhas do módulo de potência armadas (OC_A/B/C pelo trip zone de "
        "hardware, OT e DC-OV por software). 0 = ignoradas: só para uma placa sem "
        "estágio de potência conectado. Valor de boot: 1 (0 nos builds "
        "BENCH_NO_POWER_STAGE)."),

    # ---- malha aberta de bancada ---------------------------------------------
    "ol_run": ("0/1",
        "PWM em malha aberta de bancada: 1 = entra em OPENLOOP (vetor de tensão "
        "girante com ol_freq / ol_mod, sem malha de corrente), 0 = para. Só lê 1 "
        "enquanto o estado é de fato OPENLOOP."),
    "ol_freq": ("Hz",
        "Frequência elétrica do vetor em malha aberta; o sinal define o sentido. "
        "Sem limite. Valor de boot: 5 Hz."),
    "ol_mod": ("razão cíclica",
        "Amplitude bruta, em razão cíclica, do vetor em malha aberta, limitada a "
        "[0, 0.5]. NÃO é escalada pelo barramento: o mesmo valor dá alguns volts na "
        "bancada e dezenas de volts no pack de alta tensão. "
        "Valor de boot (EMRAX): 0.10."),
    "align_off_en": ("0/1",
        "1 = o ALIGN varre o rotor e faz a média do ângulo do sensor vs o comandado "
        "para achar o offset elétrico (align_offset). 0 = pula isso e fixa o offset "
        "em 0 (ângulo bruto do sensor). Rode o ALIGN de novo após mudar. "
        "Valor de boot: 1."),

    # ---- barramento CC -------------------------------------------------------
    "uv_en": ("0/1",
        "Disparo de subtensão por software armado (só em RUN, limiar uv_trip_v, "
        "debounce de 2 ms). Valor de boot: 0 no build de bancada de baixa tensão, "
        "senão 1. Arme-o depois do vbuscal e do uv_trip_v."),
    "vbus_ovr": ("V",
        "Override do barramento CC para bancada. > 0: o controle (SVGEN, limite do "
        "PI) e os disparos de OV/UV usam este valor em vez do sensor; 0 = "
        "barramento medido. Precisa ser igual à fonte real, senão todo volt "
        "comandado é escalado por V_real/vbus_ovr. "
        "Valor de boot (bancada FE_UFPR 4.0): 31 V."),
    "vbus_filt_en": ("0/1",
        "Passa-baixa na tensão medida do barramento que alimenta os disparos, o "
        "limite do PI e as leituras. A troca é sem solavanco. Valor de boot: 1."),
    "vbus_filt_hz": ("Hz",
        "Frequência de corte do passa-baixa do barramento. Menor é menos ruidoso, "
        "mas atrasa um colapso real em ~1/(2π·fc). ≥ 0 (0 congela a leitura). "
        "Valor de boot: 50 Hz."),
    "vbus_ratio": ("V/V",
        "Razão do divisor barramento → pino do ADC em "
        "vbus = (code − vbus_off)·3.0·ratio/4096. Mínimo 0.001. Ajuste com "
        "`foc_debug vbuscal` e depois fixe em VBUS_DIVIDER_RATIO. "
        "Valor de boot (FE_UFPR 4.0): 327.273 (valor de projeto, ainda não "
        "ajustado)."),
    "vbus_off": ("códigos ADC",
        "Código ADC com o barramento em 0 V (erro de zero da cadeia de medição); "
        "com sinal, limitado a ±2048. Ajuste com o vbuscal junto com vbus_ratio. "
        "Valor de boot (FE_UFPR 4.0): 0 (ainda não ajustado)."),
    "uv_trip_v": ("V",
        "Limiar de subtensão do disparo por software (ver uv_en), sobre o "
        "barramento filtrado. ≥ 0, sem limite superior. Ajuste-o em ~70–80 % do "
        "barramento em operação. Valor de boot (EMRAX): 45 V."),
    "isr_cyc_rst": ("",
        "Escreva qualquer valor para zerar isr_cycles_max. Sempre lê 0."),

    # ---- observadores sem sensor + supervisor da fonte de posição ------------
    "obs_mode": ("enum",
        "Observador que alimenta o PLL sem sensor: 0 = fluxo (observador de fluxo "
        "não linear de Ortega, sensível a parâmetros), 1 = SMO (observador de "
        "corrente por modos deslizantes, robusto mas mais lento para travar). Os "
        "dois sempre rodam. Valor de boot: 0."),
    "obs_vsrc": ("enum",
        "Tensão que os observadores integram: 0 = última razão cíclica·vbus menos o "
        "modelo de zona morta, 1 = razão cíclica·vbus bruta, 2 = Vαβ comandada. "
        "Valor de boot: 0."),
    "obs_gamma": ("1/s",
        "Taxa de correção radial do observador de fluxo (puxa a estimativa de fluxo "
        "para o círculo |η| = λ). Limitado a [10, 5000]. Valor de boot: 1000."),
    "obs_smo_kslide": ("V/A",
        "Ganho de deslizamento do SMO. O setter o limita a 0.9·(1+F)/G para "
        "estabilidade em tempo discreto. Valor de boot (EMRAX): 1.0."),
    "obs_smo_e0": ("A",
        "Camada-limite do SMO: o termo de chaveamento é linear para |î − i| < E0. "
        "Mantenha obs_smo_ierr abaixo dele para o SMO permanecer linear. "
        "Valor de boot (EMRAX): 200 A."),
    "obs_smo_lpf_hz": ("Hz",
        "Piso da frequência de corte do passa-baixa da FCEM no SMO (acima dele o "
        "corte segue obs_smo_lpf_k·|ωe|). Valor de boot (EMRAX): 10 Hz."),
    "obs_smo_lpf_k": ("× |ωe|",
        "Frequência de corte do passa-baixa da FCEM no SMO como múltiplo da "
        "velocidade elétrica, acima do piso obs_smo_lpf_hz. Valor de boot: 1.0."),
    "obs_pll_bw": ("Hz",
        "Largura de banda (ζ = 1) do PLL sem sensor que produz theta_est / "
        "omega_est. Limitada a [1, 200]. Valor de boot: 40 Hz."),
    "obs_min_speed": ("rad/s elét.",
        "Abaixo deste |ωe| o observador não é confiável (FCEM pequena demais): o "
        "AUTO não faz fail-over, e rodar sem sensor abaixo dele gera a falha "
        "SENSOR_LOSS. Valor de boot (EMRAX): 400. Reduza-o numa bancada de baixa "
        "tensão."),
    "obs_flux_tol": ("pu",
        "Tolerância de convergência sobre obs_flux_err para o observador de fluxo "
        "ser considerado saudável. Valor de boot: 0.30."),
    "obs_smo_tol": ("pu",
        "Tolerância de convergência sobre obs_smo_err para o SMO ser considerado "
        "saudável. Valor de boot: 0.5."),
    "obs_rs": ("Ω",
        "Resistência do estator usada pelos observadores (separada do header do "
        "motor) para que a sensibilidade a ela possa ser testada em A/B, p. ex. "
        "±30 %. Valor de boot: MOTOR_RS_OHM."),
    "obs_ls": ("H",
        "Indutância do estator usada pelos observadores. "
        "Valor de boot: (Ld + Lq)/2."),
    "angle_src": ("enum",
        "Ângulo usado na comutação: 0 sensor (observadores em sombra), 1 observador "
        "(entra quando estiver saudável, pendente até lá), 2 auto (fail-over de mão "
        "única na perda do sensor ou em discordância sustentada). Toda passagem é "
        "feita com transição suave (blend). Valor de boot: 0."),
    "obs_err_trip": ("rad",
        "Disparo por discordância do AUTO: |θ_sensor − θ_est| acima disto por 5 ms "
        "passa a comutação para o observador. Limitado a [0.05, 3]. "
        "Valor de boot (EMRAX): 0.6 rad."),
    "obs_iq_max": ("A",
        "Limite de |iq| ao rodar sem sensor (o enfraquecimento de campo também é "
        "forçado a desligar). Limitado a [0, IQ_REF_MAX]. "
        "Valor de boot: 50 % de IQ_REF_MAX."),
    "pos_force_lost": ("0/1",
        "Bancada: 1 = finge que o sensor de posição foi perdido (só em RUN) para "
        "exercitar o fail-over. Zerado ao entrar em IDLE."),
    "pos_inj_err": ("rad",
        "Bancada: erro de ângulo somado ao ângulo do sensor tal como o supervisor o "
        "vê, para provocar o fail-over DISAGREE sem desconectar nada. Zerado ao "
        "entrar em IDLE."),
    "pos_trig_en": ("0/1",
        "Bancada: 1 = aciona a captura de disparo único do scope no tick da "
        "passagem sensor↔observador, para que a transição suave seja capturada de "
        "forma coerente."),

    # ---- injetor de degrau / disparo único do scope --------------------------
    "step_go": ("enum",
        "1 = leva step_axis a step_a E dispara o scope no mesmo tick da ISR (só em "
        "RUN); 2 = só dispara (qualquer estado: uma janela contínua de 128 "
        "amostras); 0 = libera o buffer congelado (o scope ao vivo volta)."),
    "step_axis": ("enum",
        "Eixo do degrau aplicado por step_go = 1: 0 = d (id), 1 = q (iq)."),
    "step_a": ("A",
        "Valor de referência PARA o qual vai o degrau (não um delta)."),
    "step_pre": ("amostras",
        "Amostras pré-disparo mantidas como linha de base na captura de 128 "
        "amostras. Limitado a 126. Valor de boot: 32."),

    # ---- resolver (builds RM44AC) --------------------------------------------
    "res_filt_en": ("0/1",
        "Passa-baixa casado no SIN/COS do resolver antes do atan2 (a detecção de "
        "perda continua nos sinais brutos). A troca é sem solavanco. "
        "Valor de boot: 1."),
    "res_filt_hz": ("Hz",
        "Frequência de corte do passa-baixa de SIN/COS. Atrasa o ângulo em "
        "≈ f_elec/fc rad, que res_filt_comp devolve. Mantenha-a ≥ 5× res_pll_bw. "
        "Valor de boot: 200 Hz."),
    "res_filt_comp": ("0/1",
        "1 = soma de volta ao ângulo o atraso conhecido do filtro de SIN/COS (exato "
        "em regime permanente). Sem isso, um corte baixo custa torque em alta "
        "velocidade. Valor de boot: 1."),
    "res_cal_en": ("0/1",
        "1 = o ALIGN faz uma varredura de 3 voltas que mede o bias e a amplitude de "
        "SIN/COS; uma calibração rejeitada gera a falha SENSOR_LOSS (ver "
        "cal_status). 0 = mantém a escala compilada. Valor de boot: 1."),
    "res_dir_inv": ("0/1",
        "1 = espelha o ângulo do resolver (ele conta no sentido oposto). "
        "Verificação: ol_run com +ol_freq precisa dar omega_meas positivo. Rode o "
        "ALIGN de novo após mudar. Valor de boot: 0."),
    "res_poles": ("ciclos/volta",
        "Ciclos de SIN/COS do resolver por volta mecânica, limitado a 1..50. "
        "Rode o ALIGN de novo após mudar. Valor de boot: 1."),
    "res_w_mode": ("enum",
        "Estimador de velocidade do resolver: 0 = derivada + LPF (legado), "
        "1 = observador de rastreamento tipo II (PLL, bem menos ruidoso). Os dois "
        "sempre rodam, então a troca é sem solavanco. Valor de boot: 1."),
    "res_pll_bw": ("Hz",
        "Largura de banda (ζ = 1) do PLL de velocidade do resolver, limitada a "
        "[1, 200]. Mantenha-a ≤ res_filt_hz/5, e o cruzamento da malha de "
        "velocidade ≤ este valor/4. Valor de boot: 40 Hz."),
    "res_wlpf_hz": ("Hz",
        "Frequência de corte do passa-baixa de velocidade legado "
        "(res_w_mode = 0). 0 o congela. Valor de boot: 50 Hz."),

    # ---- status somente leitura ----------------------------------------------
    "state": ("enum",
        "Máquina de estados: 0 IDLE, 1 CALIBRATE_OFFSETS, 2 ALIGN_ROTOR, 3 RUN, "
        "4 FAULT, 5 OPENLOOP."),
    "isr_count": ("contagem",
        "Contador da ISR da malha de corrente; sobe ~10000/s enquanto a ISR roda."),
    "align_offset": ("graus elét.",
        "Offset elétrico capturado pelo último ALIGN (zero do sensor vs o eixo d). "
        "Repete-se dentro de uma fração de grau quando está tudo bem. "
        "FE_UFPR 4.0 + EMRAX: ≈ 106.6–107.3°."),
    "align_delta": ("graus elét.",
        "Metade da diferença entre as varreduras de ALIGN para frente e para trás: "
        "o ângulo de carga do atrito. ≈ 6° a 8 A na bancada; I·sin δ ≈ a corrente "
        "de atrito."),
    "pole_pairs": ("",
        "Pares de polos do motor (tempo de compilação). A GUI o usa para converter "
        "rad/s elétricos em rpm."),
    "omega_meas": ("rad/s elét.",
        "Velocidade elétrica medida pela fonte de posição ativa "
        "(rpm = ω·60/(2π·pole_pairs))."),
    "fw_id": ("A",
        "Corrente d que o regulador de enfraquecimento de campo está aplicando "
        "(≤ 0)."),
    "vmag": ("V",
        "Módulo da tensão pedida |Vdq|; o enfraquecimento de campo o mantém perto "
        "de fw_vmax_frac·Vbus/2."),
    "fault_code": ("bits",
        "Falhas travadas, 0 = nenhuma: 0x01 OVERCURRENT, 0x02 OVERVOLTAGE, "
        "0x04 UNDERVOLTAGE, 0x08 OVERTEMP, 0x10 GATE_DRIVER, 0x20 SENSOR_LOSS, "
        "0x40 WATCHDOG, 0x80 CURRENT_SENSE. Zeradas ao clicar em Limpar falha."),
    "tz_trip": ("contagem",
        "Eventos do trip zone de hardware desde o boot (linhas de OC do módulo → "
        "disparo único do ePWM). Todo power-up mostra 1: as flags do módulo "
        "estabilizam depois do MCU, então limpe a falha uma vez (às vezes duas)."),
    "module_fault": ("bits",
        "Linhas de falha do módulo de potência lidas agora: 0x01 OC_A, 0x02 OC_B, "
        "0x04 OC_C, 0x08 OT, 0x10 DC-OV. Sobrecorrente em qualquer braço ativa as "
        "três linhas de OC. 0x1F com o módulo desconectado (fail-safe)."),
    "sw_in": ("bits",
        "Entradas das chaves do cockpit: bit0 = SW_MAIN (GPIO29), bit1 = SW_START "
        "(GPIO59); 1 = chave ligada (12 V na entrada)."),
    "gate_en": ("bits",
        "Leitura dos pinos de habilitação do gate: bit0 = mestre GPIO66, "
        "bit1 = auxiliar GPIO131. A habilitação de gate da placa é o AND deles com "
        "o intertravamento do SW_MAIN. Em IDLE lê 2."),
    "gate_en_dbg": ("bits",
        "Só bancada: escreva bit0/bit1 para acionar GPIO66/GPIO131 diretamente. "
        "Respeitado só em IDLE com module_faults_en = 0; qualquer mudança de estado "
        "o sobrepõe. Lê de volta os pinos."),
    "trig_state": ("enum",
        "Disparo único do scope: 0 livre (contínuo), 1 armado (enchendo a janela "
        "pós-disparo), 2 concluído (congelado até step_go = 0)."),
    "trig_idx": ("amostra",
        "Índice da amostra de disparo na captura de 128 amostras entregue."),
    "phase_id_status": ("bits",
        "Resultado do phase-ID. Nibble baixo: 0 nunca rodou, 1 aplicado, "
        "2 rejeitado. 0x0010<<c: patamar acionado do canal c fraco demais; "
        "0x0100<<c: nenhum padrão de sinais utilizável no canal c; 0x0800: dois "
        "canais reivindicaram a mesma fase."),
    "phase_id_mod": ("razão cíclica",
        "Razão cíclica em que o regulador do phase-ID estabilizou (≈ 0.07 a 3 A na "
        "bancada de 31 V). Zona morta ≈ 0.75·este valor·Vbus. Travado no limite = a "
        "corrente-alvo era inalcançável."),

    # ---- custo da ISR + telemetria sem sensor --------------------------------
    "isr_cycles": ("ciclos SYSCLK",
        "Custo da última ISR da malha de corrente. Orçamento: 20 000 (100 µs a "
        "200 MHz)."),
    "isr_cycles_max": ("ciclos SYSCLK",
        "Valor máximo retido (max-hold) de isr_cycles; zere com isr_cyc_rst."),
    "theta_est": ("rad elét.",
        "Estimativa de ângulo do PLL sem sensor."),
    "omega_est": ("rad/s elét.",
        "Estimativa de velocidade do PLL sem sensor."),
    "theta_err": ("rad",
        "wrap(θ_est − θ_sensor): erro do observador em relação ao sensor. Média "
        "dentro de ±0.1 rad quando o observador está bem sintonizado."),
    "obs_flux_err": ("pu",
        "Convergência do observador de fluxo |η|²/λ² − 1: 0 = convergido, "
        "−1 = sem fluxo."),
    "obs_smo_err": ("pu",
        "Convergência do SMO |ê|²/previsto(ω)² − 1: 0 = convergido, "
        "−1 = sem FCEM."),
    "obs_dtheta": ("rad",
        "wrap(θ_flux − θ_smo): quanto os dois observadores discordam."),
    "angle_act": ("enum",
        "Ângulo que está comutando agora: 0 sensor, 1 observador."),
    "pos_status": ("bits",
        "Supervisor da fonte de posição: 0x001 OBS_ACTIVE, 0x002 SENSOR_LOST, "
        "0x004 DISAGREE, 0x008 OBS_UNHEALTHY, 0x010 BELOW_MIN_SPD, "
        "0x020 FAILOVER_DONE, 0x040 DEGRADED, 0x080 BLENDING, 0x100 FORCED, "
        "0x200 LOST, 0x400 REQ_PENDING, 0x800 IF_ACTIVE (reservado)."),
    "obs_healthy": ("0/1",
        "1 = o observador selecionado é confiável (acima de obs_min_speed, PLL "
        "rastreando, convergido). Leva 20 ms para ganhar confiança, 5 ms para "
        "perder."),
    "obs_resets": ("contagem",
        "Vezes que a proteção contra divergência (blow-up) do observador reiniciou "
        "o estimador."),
    "warn_code": ("bits",
        "Avisos (nunca FAULT): 0x01 SENSORLESS_FAILOVER = o AUTO passou a comutação "
        "para o observador. Zerados junto com as falhas / em IDLE."),
    "obs_smo_ierr": ("A",
        "Erro de corrente do SMO |î − i|. Dimensione obs_smo_e0 a partir dele "
        "(mantenha-o abaixo de E0)."),

    # ---- QEP (builds com encoder) --------------------------------------------
    "qep_fast_en": ("0/1",
        "Detector rápido de perda do QEP: em RUN, um contador que estava se movendo "
        "(≳ 250 rad/s elét. no Teknic) e então congela por 0.3 ms trava a "
        "sinalização de perda do sensor. Valor de boot: 1."),
    "qep_fast_trips": ("contagem",
        "Vezes que o detector rápido do QEP travou a sinalização de perda do "
        "sensor."),

    # ---- diagnóstico do resolver (builds RM44AC) -----------------------------
    "sin_raw": ("códigos ADC",
        "Código ADC bruto do SIN do resolver. FE_UFPR 4.0: bias ≈ 2050, excursão "
        "≈ ±1585 códigos; 1 código ≈ 0.73 mV."),
    "cos_raw": ("códigos ADC",
        "Código ADC bruto do COS do resolver. FE_UFPR 4.0: bias ≈ 2050, excursão "
        "≈ ±1585 códigos; 1 código ≈ 0.73 mV."),
    "res_mag": ("pu",
        "sin² + cos² dos sinais normalizados, sem filtro; ≈ 1.0 quando saudável. "
        "Fora de [0.25, 2.25] o resolver é declarado perdido."),
    "cal_sin_min": ("códigos ADC",
        "Menor código de SIN visto pela última varredura de calibração do ALIGN "
        "(bias = (min+max)/2, amplitude = (max−min)/2). 0xFFFF até uma varredura "
        "rodar."),
    "cal_sin_max": ("códigos ADC",
        "Maior código de SIN visto pela última varredura de calibração do ALIGN. "
        "0 até uma varredura rodar."),
    "cal_cos_min": ("códigos ADC",
        "Menor código de COS visto pela última varredura de calibração do ALIGN. "
        "0xFFFF até uma varredura rodar."),
    "cal_cos_max": ("códigos ADC",
        "Maior código de COS visto pela última varredura de calibração do ALIGN. "
        "0 até uma varredura rodar."),
    "cal_status": ("bits",
        "Calibração de escala do resolver. Nibble baixo: 0 nunca rodou, 1 aplicada, "
        "2 rejeitada (escala antiga mantida, FAULT). Flags de saturação (clip): "
        "0x10 sin baixo, 0x20 sin alto, 0x40 cos baixo, 0x80 cos alto."),
    "res_w_lpf": ("rad/s elét.",
        "Estimativa de velocidade legada (derivada + LPF), sempre calculada; compare "
        "com omega_meas. As duas são iguais quando res_w_mode = 0."),

    # ---- constantes do motor / das malhas (entradas do autotuner) -----------
    "rs_ohm": ("Ω",
        "Resistência de fase do motor, do header do motor (entrada do autotuner)."),
    "ld_h": ("H",
        "Indutância de eixo d do motor, do header do motor (entrada do autotuner)."),
    "lq_h": ("H",
        "Indutância de eixo q do motor, do header do motor (entrada do autotuner)."),
    "flux_vs": ("V·s",
        "Fluxo concatenado λ dos ímãs, do header do motor. Datasheet do EMRAX: "
        "0.0387; dados de bancada sugerem ~0.034, ainda não confirmado."),
    "i_peak_a": ("A",
        "Limite de amplitude de corrente do motor, do header (também IQ_REF_MAX)."),
    "vbus": ("V",
        "Barramento CC MEDIDO (filtrado), mostrado mesmo enquanto o controle usa "
        "vbus_ovr. Só é tão bom quanto vbus_ratio / vbus_off: rode o vbuscal "
        "primeiro."),
    "vbus_raw": ("códigos ADC",
        "Código ADC bruto do barramento, sem escala e sem filtro: a entrada do "
        "vbuscal. Se ele quase não se mexe entre duas tensões de barramento, o "
        "problema é analógico, não de calibração."),
    "dtc_k": ("razão cíclica",
        "Compensação total de zona morta aplicada: dtc_duty + dtc_v/vbus "
        "(≈ 0.047 a 31 V na FE_UFPR 4.0)."),
    "isr_freq_hz": ("Hz",
        "Frequência da malha de corrente / do PWM."),
    "speed_loop_ts": ("s",
        "Período da malha de velocidade."),
    "fw_vmax_frac": ("× Vbus/2",
        "Tensão-alvo do enfraquecimento de campo como fração de Vbus/2 "
        "(FW_VMAX_FRACTION, de tempo de compilação)."),
}
