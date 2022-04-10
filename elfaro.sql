-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2021 a las 03:52:25
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elfaro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(10) NOT NULL,
  `nombreContacto` varchar(50) NOT NULL,
  `emailContacto` varchar(50) NOT NULL,
  `asuntoContacto` varchar(50) NOT NULL,
  `mensajeContacto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idNoticia` int(10) NOT NULL,
  `seccion` char(1) DEFAULT NULL,
  `titulo` varchar(1000) NOT NULL,
  `noticia` varchar(5000) NOT NULL,
  `Categoria` varchar(30) DEFAULT NULL,
  `archivoimagen` varchar(100) DEFAULT NULL,
  `archivovideo` varchar(100) DEFAULT NULL,
  `archivoaudio` varchar(100) DEFAULT NULL,
  `TIMESTAMP_REGISTRO` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idNoticia`, `seccion`, `titulo`, `noticia`, `Categoria`, `archivoimagen`, `archivovideo`, `archivoaudio`, `TIMESTAMP_REGISTRO`) VALUES
(1, '1', 'Senado aprueba en general paquete de ayuda económica para la clase media', 'Este domingo en sesión especial el Senado aprobó en general con 32 votos a favor y 10 abstenciones el paquete de ayuda económica presentado por el gobierno, que incluye la entrega de un bono clase media, créditos blandos y mejoras al Ingreso Familiar de Emergencia, entre otras cosas. De esta forma, el proyecto se acerca al fin de una ardua tramitación en la Cámara Alta, donde tras intensas tratativas entre el oficialismo y la oposición durante la semana, se logró un acuerdo respecto de las indicaciones.\r\nEn la votación del proyecto destacó la abstención en masa de los siete senadores del Partido Socialista, quiénes quisieron hacer un punto político al considerar que las mejoras realizadas en la Comisión de Hacienda no eran suficientes para ir en ayuda de la población.\r\nEn la votación en particular, se presentó una controversia por la solicitud de la senadora Ximena Rincón y del senador Carlos Bianchi (Ind) para votar en forma separada los incisos 2 y 3 del artículo 8 del proyecto, los que establecen la incompatibilidad del bono clase media con el IFE entregado en enero y febrero.\r\nEn definitiva, la admisibilidad de la solicitud se aprobó con 22 votos a favor, 19 en contra y una abstención. Sin embargo, desde el Ejecutivo explicaron que de quitarse estos incisos y declararse la compatibilidad del bono con el IFE se generaría un mayor gasto fiscal.', 'Política', 'politica.jpg', '', 'Bono-IFE.mp3', '2021-05-10 00:42:47'),
(2, '1', 'Tres carabineros fueron detenidos por fiesta clandestina en Providencia: institución abrió sumario', 'Pasado el mediodía, se informó de la detención de tres funcionarios de carabineros que según la información preliminar, participaban en una fiesta clandestina en un departamento de la comuna de Providencia. La información fue ratificada por la institución en una vocería. “Se detuvo a cuatro personas que infligieron las medidas sanitarias dentro de las cuales había miembros de la institución”, señaló la Teniente Coronel Natalia Gutiérrez, de la Prefectura Oriente. Según la oficial todo ocurrió “en el contexto de una denuncia desarrollada por personal municipal de Providencia”. Y que “la totalidad de detenidos adultos infringieron el artículo 381 del código penal, por lo cual pasan a segundo control de detención el día de hoy”. Además, la seremi de Salud metropolitana instruyó la apertura de un sumario sanitario. Respecto a la situación de los uniformados puestos bajo arresto, la oficial informó: “La Institución determinó de forma inmediata un sumario con la finalidad de esclarecer responsabilidades y sanciones', 'Policial', 'policial.jpg', '', '', '2021-05-10 00:42:47'),
(3, '1', 'El primer helicóptero que sobrevolará otro planeta ya está en suelo marciano', 'El minihelicóptero de la Nasa Ingenuity, que llegó en febrero a Marte adherido a la parte de abajo del rover Perseverance, acaba de separarse del vehículo y está ya en la superficie del planeta rojo, anunció la agencia espacial estadounidense. “¡Aterrizaje confirmado del Helicóptero de Marte!”, tuiteó el sábado por la noche el laboratorio de la Nasa a cargo de la misión. Este helicóptero ultraligero, similar a un dron grande, llegó plegado y acoplado bajo el Perseverance, que aterrizó en Marte el 18 de febrero, donde permaneció hasta que el rover alcanzó el lugar donde debe producirse el vuelo. “Su viaje de 471 millones de km llegó a su fin con este pequeño salto de 10 cm desde el vientre del rover hasta la superficie de Marte hoy. Próximo reto: sobrevivir a la noche”, tuiteó el laboratorio. Una foto acompañando al tuit mostraba al Perseverance alejándose del helicóptero. Debe dejarle el horizonte totalmente despejado en menos de 25 horas, ya que el helicóptero precisa del sol para alimentar sus paneles solares con energía y poder sobrevivir calentándose durante las glaciales noches marcianas.', 'Ciencia', 'ciencia.jpg', 'Helicoptero-Nasa.mp4', '', '2021-05-10 00:42:47'),
(4, '2', 'Hurkacz domina a Sinner y gana su primer Masters 1000 en Miami', 'Hubert Hurkacz (37°) levanta el ítulo más importante de su carrera en Miami. Llegó como un actor secundario y terminó ganando su primer Masters 1000 tras vencer a un errático Sinner (31°) por 7-6(4) y 6-4. En un torneo atípico pero legendario, el polaco hace historia. Los nervios le jugaron una mala pasada a Jannik Sinner, favorito de esta peculiar definición. El italiano, de 19 años, copó las portadas de los medios internacionales con su deslumbrante paso por Florida, no por nada era el finalista más joven del certamen desde que Rafael Nadal perdiera el torneo en 2005. Pero hoy ese juego sereno, preciso y punzante no apareció. Muy dubitativo con su servicio, el itálico siempre tuvo que remar de atrás y pese a que tuvo chances de darlo vuelta en el primer set, terminó jugando un juego para el olvido cuando estaba 6-5 arriba. Hurkacz por su parte es campeón trabajando de manera silenciosa, sin la atención que rodeaba al que es uno de los jugadores jóvenes más interesantes del circuito, pero con la tenacidad y valía de sus grandes victorias en el Hard Rock Stadium. Le ganó a Rublev (8°), Tsitsipas (5°) y Shapovalov (11°), algunas de las caras más poderosas del quinto grande, por lo que la confianza del número 37 del mundo estaba a tope.', 'Tenis', 'tenis.jpg', '', '', '2021-05-10 00:42:47'),
(5, '2', 'Quartararo gana la segunda carrera del Moto GP y Yamaha vuelve a liderar en Qatar', 'En una carrera intensa, apretada y exigente, Fabio Quartararo puso el nombre de Yamaha en lo más alto del circuito de Losail. El francés luchó por 19 vueltas para tomar la cima, despertando del sueño al joven Jorge Martín quien estuvo a minutos de conseguir pole y victoria en su segunda aparición en la máxima categoría del motociclismo. Una recuperación de Quartararo que demuestra una vez más porque es de los mejores pilotos del Moto GP. Consiguió su cuarto primer puesto en el profesionalismo y además reafirmó que en Catar manda Yamaha. Otra vez más los japoneses se van líderes. De todas formas gran parte de los focos se van con el novato Jorge Martín. El chico de Pramac Racing, equipo satélite de Ducati, que terminó primero en los clasificatorios, lideró el Gran Premio de Doha con actitud y valentía, pero cuando ya pensaba en la bandera a cuadros, el francés le quitó la cima. El ritmo no le dio y terminó perdiendo una de las carreras más ajustadas de los últimos años. Pese a que no ganó, su actuación es histórica.', 'Moto', 'moto.jpg', '', '', '2021-05-10 00:42:47'),
(6, '2', 'La solidez de Claudio Bravo no le alcanzó al Real Betis frente al Elche.', 'La solidez de Claudio Bravo no le alcanzó al Real Betis frente al Elche. En un duelo válido por la jornada 29 de La Liga, la escuadra que dirige Manuel Pellegrini comenzó ganando en su visita frente al conjunto ilicitano, pero terminó igualando 1-1. El arquero chileno disputó todo el partido y fue clave para evitar la caída de los forasteros. Al igual que en la victoria ante el Levante, el meta nacional fue el encargado de defender el arco verdiblanco. Y, cuando se le exigió, cumplió a cabalidad. Estuvo bien en los achiques y acortando centros, así como también en su juego con los pies y las atajadas. Cuando el primer lapso estaba por terminar, le sacó a Pepe Milla el gol que le pudo haber costado la derrota a los sevillanos. Fue el cuadro forastero el que asumió el protagonismo en el inicio del cotejo. Buscó por todos lados, sin prestarle la pelota a su oponente, que, al menos en el arranque, fue claramente superado. El primer aviso del equipo de los chilenos llegó en los 9′, con un disparo de distancia de Guido Rodríguez. Hasta ese momento, eran los béticos los que hacían méritos para abrir la cuenta. La insistencia visitante para inaugurar los festejos tuvo su premio. Borja Iglesias fue derribado en el área luego de un ataque construido y el juez del cotejo sancionó la pena máxima. Fue el mismo delantero quien se encargó de patear desde los 12 pasos y, con un remate al ángulo, venció al portero Édgar Badía para adelantar a los suyos. El 0-1, sin embargo, despertó a los dueños de casa. Más aún cuando Iglesias debió dejar el campo de juego por el golpe que recibió en la falta penal, dejando al elenco de Pellegrini sin su principal hombre de ataque antes de que el reloj marcara la media hora de partido.', 'Fútbol', 'futbol.jpg', '', '', '2021-05-10 00:42:47'),
(7, '3', 'Los 5 emprendimientos más rentables en Chile', 'En Chile, hay más de 1 millón 900 micro emprendedores, y el 83% de ellos trabaja por cuenta propia, según la V Encuesta de Microemprendimiento,realizada por el Ministerio de Economía, Fomento y Turismo, junto al INE. Además, las Pymes y negocios son el motor principal del desarrollo económico en Chile, ocupando el 98% de las empresas del país y generando más del 70% de los empleos. ¿Estás buscando tener tu propia empresa, pero aún no sabes en qué rubro? Conversamos con René Toro, publicita experto en marketing digital, quien analiza los emprendimientos más rentables de Chile, entregando consejos para que puedas dar el siguiente paso: 1. Sector gastronómico 2. Rubro turístico 3. Rubro de cuidado personal 4. Sector de entretenimiento y ocio 5. Rubro tecnológico', 'Productividad', 'productividad.jpg', '', '', '2021-05-10 00:42:47'),
(8, '3', 'Emprendedores que se reinventaron para ganarle al Covid-19', 'Después de superar el shock inicial por el brusco cambio y ante la amenaza de quiebra, los dueños de pymes reformularon su plan de negocios para aprovechar las oportunidades que está generando el coronavirus. Emprendedores que destacan por su rapidez y creatividad para adaptarse a la nueva realidad, y convertir la crisis en oportunidad. Esto les permitió transformar sus pymes para ofrecer nuevos productos y servicios para evitar la quiebra. Aquí te compartimos tres ejemplos de mujeres y hombres que se reinventaron para no sucumbir al impacto económico del Covid-19. 1. De uniformes a mascarillas reutilizables - Victoria Outdoor Gear, empresa dedicada a confeccionar indumentaria para las Fuerzas Armadas, policía y personal de las empresas de seguridad en la Argentina, cambió su rubro por el de mascarillas reutilizables. 2. Party box - Según la fiesta que desee realizar el cliente, Milena Flurh experta event planner y diseñadora, envía la caja con todos los elementos y las instrucciones para que las personas realicen su propia decoración de acuerdo al motivo elegido. 3. Quiero Pannet - Antonio Bertasio tiene una fábrica de pan, creó la app hace varios años, pero no tuvo éxito. Ahora en plena cuarentena, la aplicación renació y se convirtió en el caballo de batalla de su fábrica que le permite vender productos congelados a supermercados, restaurantes, comedores y a particulares.', 'Salud', 'coronavirus.jpg', '', '', '2021-05-10 00:42:47'),
(9, '3', '“Semana circular”: Anuncian nuevo Festival de Innovación y Emprendedores en Tarapacá', 'Entre este martes 23 hasta el 25 de marzo, Tarapacá será protagonista del Capital Circular, Festival de Innovación y Emprendedores que se iniciará luego de tres meses de actividades online y más de 15 mil visitas a la página y redes sociales. La “Semana Circular” consta de tres días de talleres y actividades sobre economía circular, innovación, empresas B, medioambiente, sustentabilidad y mucho más, tendrá la participación de destacadas personalidades del ecosistema emprendedor. Todas las actividades son gratuitas y 100% online. “Cuando el 10 de diciembre del año pasado lanzamos la plataforma Capital Circular, estábamos sumamente entusiasmados en poder establecer un hito a nivel de ferias virtuales sobre emprendimiento e innovación social, pero los resultados han superado las mejores expectativas”, comentó Pablo Rodríguez, director ejecutivo del proyecto.', 'Emprendimiento', 'emprendimiento.jpg', '', '', '2021-05-10 00:42:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(50) NOT NULL,
  `clave` varchar(8) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idContacto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
