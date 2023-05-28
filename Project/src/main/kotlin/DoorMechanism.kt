object DoorMechanism { // Controla o estado do mecanismo de abertura da porta.
    private const val OPEN = 1

    // Inicia a classe, estabelecendo os valores iniciais.
    fun init() {
        SerialEmitter.init()
    }

    // Envia comando para abrir a porta, com o parâmetro de velocidade
    fun open(velocity: Int) {
        SerialEmitter.send(SerialEmitter.Destination.DOOR, velocity.shl(1) or OPEN)
    }

    // Envia comando para fechar a porta, com o parâmetro de velocidade
    fun close(velocity: Int) {
        SerialEmitter.send(SerialEmitter.Destination.DOOR, velocity.shl(1))
    }

    // Verifica se o comando anterior está concluído
    fun finished() = !SerialEmitter.isBusy()
}

fun main() {
    DoorMechanism.init()
    DoorMechanism.open(10)
    while (!DoorMechanism.finished());
    DoorMechanism.close(10)
    while (!DoorMechanism.finished());
    println(DoorMechanism.finished())
}