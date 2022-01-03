
/********************** ********************** ********************** ********************** 
 * Universidade da Beira Interior (UBI)
 * Mestrado em Ensino de Física e Química
 * Disciplina: TICAF (Tecnologia da Informação e Comunicação Aplicada a Física)
 * Ano letivo: 2021/2022
 * 
 * Discentes: Cláudia Marques (M11258), Lígia Rios (M12131), Margarida Simões (M12038)
 * Docente: Prof. Dra. Elsa Fonseca
 * 
 * Licença: Open and Free License (MiT)
 *********************** ********************** ********************** ********************** /

/**
 * Paramâmetros gerais.
 * NOTA IMPORTANTE: Todos os valores nominais foram multiplicados por x1000
 * para evitar a utilização de ponto flutuante e aumentar a precisão na leitura
 */
#define V_BAT_NOMINAL       8800L
#define V_BAT_MINIMAL       7500L
#define V_BATLOWRATIO        400L
#define V_PAINEL_NOMINAL   12000L
#define R_BAT_1           100000L
#define R_BAT_2           380000L   /* 33kOhm com 20% de margem de erro medido dentro do circuito */

#define SWITCH_ON         (HIGH)
#define SWITCH_OFF        (LOW)
#define BTN_PRESSED       (HIGH)

#define CARREGAR_BAT      1
#define NAO_CARREGAR_BAT  0

//#define DEBUG   1
#ifdef DEBUG
static long int _static_counter = 0;
#   define LOGPULSE 900
#endif


/*
 * Variáveis globais
 */
const int kBatteryCtrlVoltagePin = A2;  /// Entrada analógica do controlo da Bateria
const int kPainelCtrlVoltagePin  = A5;  /// Entrada analógica do controlo do Painel Solar

const int kLedOnPort = 13;              /// Porta de ativação do LED que indica que o motor está em funcionamento
const int kLedLowBatPort = 12;          /// Porta de ativação do LED que indica que a bateria está baixa
const int kLedPainelOnPort = 11;        /// Porta de ativação do LED que indica que o painel solar está ativo
const int kLedBatOnPort = 10;           /// Porta de ativação do LED que indica que a bateria está ativo
const int kLedChargeBatPort = 9;        /// Porta de ativação do LED que indica que a bateria está a ser carregada
const int kLedNoSourcePort = 2;         /// Porta de ativação do LED que indica que não existe fonte ativa (NÃO UTILIZADO)

const int kSwitchCtrlMotor = 8;       /// Controlo do Motor (NÃO UTILIZADO)
const int kSwitchCtrlBat = 6;         /// Liga e desliga a bateria sem carregar
const int kSwitchCtrlBatCharger = 3;  /// Liga e desliga a bateria com carregamento do painel
const int kSwitchCtrlPainel = 4;      /// Liga e desliga o painel
const int kSwitchCtrlPrepCharge = 7;  /// Liga e desliga o carregador da bateria
const int kBtnActivateCharger = 8;    /// Botão de ativação do carregador

/// Variável de controlo que liga e desliga o circuito de carregamento da bateria
static unsigned short int _btn_charger_state = NAO_CARREGAR_BAT;

/**
 * O nó do divisor de corrente, está entre uma resistência de 10kOhm e uma
 * resistência de 30kOhm para limitar a entrada de corrente para os pinos analógicos
 * do Atm328P. Para isso utilizamos a expressão do divisor de voltagem na entrada 
 * da porta analógica:
 * 
 *    V_lim = V_bat x R_1 / (R_1 + R_2)
 *    
 * Sendo:
 *  V_bat = 8,8V (Voltargem Nominal - retirado do datasheet da bateria)
 *  V_painel = 12V (Voltargem Nominal dos 4 paineis solares em série)
 *  R_1 = 10kOhm
 *  R_2 = 30kOhm
 */
const long int kCtrlMaxBatVoltageLimit = (((V_BAT_NOMINAL * R_BAT_1) / (R_BAT_1 + R_BAT_2)) / 1023.0);//((V_BAT_NOMINAL * R_BAT_1) / (R_BAT_1 + R_BAT_2));
/**
 * A mesma regra se aplica a entrada do painel
 */
const long int kCtrlMaxPainelVoltageLimit = (((V_PAINEL_NOMINAL * R_BAT_1) / (R_BAT_1 + R_BAT_2))  / 1023.0);
/**
 * Define o limite inferior da bateria utilizando a mesma regra acima
 */
const long int kCtrlMinBatVoltageLimit = (((V_BAT_MINIMAL * R_BAT_1) / (R_BAT_1 + R_BAT_2))  / 1023.0);
 
/**
 * Estrutura de controlo da direção do circuito
 */
typedef enum {
  BATERIA,
  PAINEL_SOLAR,
  NO_SOURCE
} power_outlet_t;

power_outlet_t _po_atual;

/**
 * Protótipos de função locais
 */
void lock(void);
void unlock(void);
int verify_lock(void);
void led_painelon_batoff(void);
void led_batonon_paineloff(void);
void led_nopower(void);
void check_charger_activation(void);

void controlo_bateria(int, int);
void controlo_painel(int, int);
void monitor_power(int, int);

/**
 * FUNÇÂO PRINCIPAL DE INICIALIZAÇÃO
 */
void setup() {
  /// Ativa todos os PINs de LED de controlo
  pinMode(kLedOnPort, OUTPUT);
  pinMode(kLedLowBatPort, OUTPUT);
  pinMode(kLedPainelOnPort, OUTPUT);
  pinMode(kLedBatOnPort, OUTPUT);
  pinMode(kLedChargeBatPort, OUTPUT);
  pinMode(kLedNoSourcePort, OUTPUT);

  /// Ativa todos os switches the controlo dos MOSFETS da bateria e do painel solar
  pinMode(kSwitchCtrlMotor, OUTPUT);
  pinMode(kSwitchCtrlBat, OUTPUT);
  pinMode(kSwitchCtrlPainel, OUTPUT);
  pinMode(kSwitchCtrlBatCharger, OUTPUT);
  pinMode(kSwitchCtrlPrepCharge, OUTPUT);

  /// Ativa o controlo de signal através do botão que ativa o carregamento da bateria
  pinMode(kBtnActivateCharger, INPUT);

  /// Liga o LED de "power on" do sistema
  digitalWrite(kLedOnPort, HIGH);
  /// Liga a entrada para o motor por defeito (DESATIVADO)
  //digitalWrite(kSwitchCtrlMotor, SWITCH_ON);

#ifdef DEBUG
  //// Initiate the serial port
  Serial.begin(9600);
  Serial.println("[DEPURAÇÃO MCU CONTROLO BATERIA - TICAF]");
#endif
  
  /// Inicialmente, por defeito a bateria é selecionada como fonte de energia
  _po_atual = BATERIA;
}

static int state_lock = 0;
static int last_bat_switch = SWITCH_OFF;
static int last_painel_switch = SWITCH_OFF;

/**
 * FUNÇÃO PRINCIPAL DE EXECUÇÂO
 * ---------------------------------------------------------
 * Controlo de Execução - Freq. de chamadada função: 16MHz
 * Intervalo de Execução = 1 / Freq. de chamada --> Pulso
 */
void loop() {
  if ( verify_lock() ) {
    lock(); /// Bloqueia a execução de ciclos concorrentes
    
    /// Faz as leituras das portas analógicas
    int batReadRaw    = analogRead(kBatteryCtrlVoltagePin);
    int painelReadRaw = analogRead(kPainelCtrlVoltagePin);

    float batRead = (batReadRaw * R_BAT_1) / (R_BAT_1 + R_BAT_2);
    float painelRead = (painelReadRaw * R_BAT_1) / (R_BAT_1 + R_BAT_2);
    /// Normalização da leitura (x1000)
    long int batReadNorm      = long(batRead * 100);
    long int painelReadNorm   = long(painelRead * 100);
#if defined(DEBUG)
    //if ( (_static_counter++) % LOGPULSE) {
        Serial.print("[Leitura da Bateria]: ");
        Serial.print(batReadNorm);
        Serial.print(" [cmp] ");
        Serial.println(kCtrlMaxBatVoltageLimit);
        Serial.print("[Leitura do Painel]: ");
        Serial.print(painelReadNorm);
        Serial.print(" [cmp] ");
        Serial.println(kCtrlMaxPainelVoltageLimit);
    //}
#endif
    
    /// Verifica qual a fonte de voltagem do circuito (Bateria ou Painel)
    switch ( _po_atual ) {
      case BATERIA: {
        led_batonon_paineloff();
        controlo_bateria( batReadNorm, painelReadNorm );
        break;
      }
      case PAINEL_SOLAR: {
        led_painelon_batoff();
        controlo_painel( batReadNorm, painelReadNorm );
        break;
      }
      case NO_SOURCE: {
        led_nopower();
        monitor_power( batReadNorm, painelReadNorm );
        break;
      }
    }
    
    unlock(); /// Desbloqueia a operação de ciclos concorrentes

    /// Diminui o pulso para 1kHz
    //delay(100);
  }
}

/**
 * Verifica se o botão que define o carregamento foi acionado ou não
 */
void check_charger_activation() {
  int btnState = digitalRead(kBtnActivateCharger);
  if ( btnState == BTN_PRESSED ) {
    _btn_charger_state = !_btn_charger_state;
    delay(10); /// para que a leitura não se sobreponha
  }
}

/**
 * Controla todas as funções de processamento da bateria incluíndo todos seus switches
 * @param batRead     - A leitura da bateria
 * @param painelRead  - A leitura do painel
 */
void controlo_bateria(int batRead, int painelRead) {
  digitalWrite(kLedOnPort, HIGH);
  /// Na bateria desativa o LED de carregamento da bateria
  digitalWrite(kLedChargeBatPort, LOW);
  
  last_bat_switch     = SWITCH_ON;
  last_painel_switch  = SWITCH_OFF;
  /// Ativa o switch da bateria e desativa o switch do painel (circuito aberto do MOSFET da bateria
  /// e circuito fechado do MOSFET do painel)
  /// MOSFET gate configuration: V_g < V_glim, V_g < 2V | V_g >= 2V

  /// Circuito aberto do MOSFET V_gate (motor activado pela bateria)
  digitalWrite(kSwitchCtrlBat, SWITCH_ON);

  /// Porque a transição do switch do mosfet pode demorar alguns ms,
  /// colocamos um delay para evitar overload: 100 milisegundos
  delay(100);

  /// Circuito fechado do MOSFET V_gate (motor desactivado pelo painel solar)
  digitalWrite(kSwitchCtrlPainel, SWITCH_OFF);
  
  /// Verifica se a bateria está no limite inferior V_cut ~ 7,5V
  if ( batRead <= V_BAT_MINIMAL ) {
    digitalWrite(kLedLowBatPort, LOW);

    /// ... é preciso também controlar se o painel solar tem ou não carga ativa
    if ( painelRead >= V_BAT_MINIMAL ) {
      _po_atual = PAINEL_SOLAR;
    }
    else { /// Ambas as fontes não estão a fornecer uma quantidade de energia suficiente para ativar o cicuito (sem sol, sem carga na bateria)
      _po_atual = NO_SOURCE;
    }
    
    return;
  }

  /// Ascende o LED de "Low Battery" para baixa utilização da bateria
  /// Low Battery = V_cut + 0.4V
  if ( batRead <= (V_BAT_MINIMAL + V_BATLOWRATIO) ) {
    digitalWrite(kLedLowBatPort, HIGH);
  }
}
/**
 * Controla todas as funções de processamento do painel solar incluíndo todos seus switches
 * @param batRead     - A leitura da bateria
 * @param painelRead  - A leitura do painel
 */
void controlo_painel(int batRead, int painelRead) {
  digitalWrite(kLedOnPort, HIGH);

  last_bat_switch     = SWITCH_OFF;
  last_painel_switch  = SWITCH_ON;
  /// Ativa o switch do painel solar e desativa o switch da bateria (circuito aberto do MOSFET do painel solar
  /// e circuito fechado da bateria)
  /// MOSFET gate configuration: V_g < V_glim, V_g < 2V | V_g >= 2V

  /// Circuito fechado do MOSFET V_gate (motor desativado pela bateria)
  digitalWrite(kSwitchCtrlBat, SWITCH_OFF);
  
  /// Porque a transição do switch do mosfet pode demorar alguns ms,
  /// colocamos um delay para evitar overload: 100 milisegundos
  delay(100);

  /// Circuito aberto do MOSFET V_gate (motor activado pelo painel solar)
  digitalWrite(kSwitchCtrlPainel, SWITCH_ON);
  
  /// Verifica se o painel solar está a fornecer energia
  if ( painelRead >= V_BAT_MINIMAL ) {

    /// Verifica se a bateria está carregada suficientemente para assumir o sistema
    if ( batRead >= V_BAT_NOMINAL ) { /// A bateria está totalmente carregada
      _po_atual = BATERIA;
    }

    /// ... caso contrário não faz nada e continua a carregar a bateria utilizando o Painel Solar !
    digitalWrite(kLedChargeBatPort, HIGH); /// Charge Bat Ligado
  }
  /// O painel solar não tem energia solar suficiente para operação
  else {
    /// É necessário verificar se a bateria tem energia suficiente para assumir a execução do sistema
    /// A bateria suficiente é no mínimo o parâmetro de LOW battery: V_cut + 0.4V
    if ( batRead >= (V_BAT_MINIMAL + V_BATLOWRATIO) ) {
      _po_atual = BATERIA;
    }
    /// ... ambos os sistemas não tem energia suficiente para ativar o sistema
    else {
      _po_atual = NO_SOURCE;
    }
  }
}

/**
 * Monitora a procura por alguma fonte de energia
 * @param batRead     - A leitura da bateria
 * @param painelRead  - A leitura do painel
 */
void monitor_power(int batRead, int painelRead) {
  if ( last_bat_switch != SWITCH_OFF || last_painel_switch != SWITCH_OFF) {
    last_bat_switch     = SWITCH_OFF;
    last_painel_switch  = SWITCH_ON;
    /// Desliga ambos os switches (Bateria e Painel Solar)
    digitalWrite(kSwitchCtrlBat, SWITCH_OFF);

    /// Porque a transição do switch do mosfet pode demorar alguns ms,
    /// colocamos um delay para evitar overload: 100 milisegundos
    delay(100);
  
    digitalWrite(kSwitchCtrlPainel, SWITCH_OFF);
  }
  
  
  /// Verifica se o painel solar tem energia
  if ( painelRead >= V_BAT_MINIMAL ) {
    _po_atual = PAINEL_SOLAR;
  }
  /// ...caso o painel solar não tenha energia, verifica se a bateria tem o mínimo para funcionar
  else if ( batRead >= (V_BAT_MINIMAL + V_BATLOWRATIO) ) {
    _po_atual = BATERIA;
  }

  ///...caso contrário o sistema continua em standby (blink LED :)
  digitalWrite(kLedOnPort, HIGH);
  delay(1000);
  digitalWrite(kLedOnPort, LOW);
  delay(500);
}

int verify_lock() { return !state_lock; } /// Retorna verdadeiro se o sistema não tiver um bloqueio
void lock ()      { state_lock = 1; }     /// Ativa o lock para futuras execuções
void unlock ()    { state_lock = 0; }     /// Desativa o lock para futuras execuções

/**
 * Liga o LED do painel solar e desliga o LED da bateria
 */
void led_painelon_batoff() {
  digitalWrite(kLedBatOnPort, LOW);
  digitalWrite(kLedPainelOnPort, HIGH);
}
/**
 * Liga o LED da bateria e desliga o LED do painel solar
 */
void led_batonon_paineloff() {
  digitalWrite(kLedBatOnPort, HIGH);
  digitalWrite(kLedPainelOnPort, LOW);
}
/**
 * Desliga todos os leds the "power on" (Bateria ou Painel)
 */
void led_nopower() {
  digitalWrite(kLedBatOnPort, LOW);
  digitalWrite(kLedPainelOnPort, LOW);
  digitalWrite(kLedLowBatPort, LOW);
  digitalWrite(kLedChargeBatPort, LOW);
}
