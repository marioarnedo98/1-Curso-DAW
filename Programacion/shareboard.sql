-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-05-2018 a las 17:13:13
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shareboard`
--
CREATE DATABASE IF NOT EXISTS `shareboard` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shareboard`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shares`
--

DROP TABLE IF EXISTS `shares`;
CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `title`, `body`, `create_date`, `img`) VALUES
(16, 1, 'Real First One ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', '2018-05-17 12:49:27', 'https://images8.alphacoders.com/468/468209.jpg'),
(18, 2, 'Muy lejos, muy allÃ¡...', 'Muy lejos, mÃ¡s allÃ¡ de las montaÃ±as de palabras, alejados de los paÃ­ses de las vocales y las consonantes, viven los textos simulados. Viven aislados en casas de letras, en la costa de la semÃ¡ntica, un gran ocÃ©ano de lenguas. Un riachuelo llamado Pons fluye por su pueblo y los abastece con las normas necesarias. Hablamos de un paÃ­s paraisomÃ¡tico en el que a uno le caen pedazos de frases asadas en la boca. Ni siquiera los todopoderosos signos de puntuaciÃ³n dominan a los textos simulados; una vida, se puede decir, poco ortogrÃ¡fica. Pero un buen dÃ­a, una pequeÃ±a lÃ­nea de texto simulado, llamada Lorem Ipsum, decidiÃ³ aventurarse y salir al vasto mundo de la gramÃ¡tica. El gran Oxmox le desanconsejÃ³ hacerlo, ya que esas tierras estaban llenas de comas malvadas, signos de interrogaciÃ³n salvajes y puntos y coma traicioneros, pero el texto simulado no se dejÃ³ atemorizar. EmpacÃ³ sus siete versales, enfundÃ³ su inicial en el cinturÃ³n y se puso en camino. Cuando ya habÃ­a escalado las primeras colinas de las montaÃ±as cursivas, se dio media vuelta para dirigir su mirada por Ãºltima vez, hacia su ciudad natal Letralandia, el encabezamiento del pueblo Alfabeto y el subtÃ­tulo de su propia calle, la calle del renglÃ³n. Una pregunta retÃ³rica se le pasÃ³ por la mente y le puso melancÃ³lico, pero enseguida reemprendiÃ³ su marcha. De nuevo en camino, se encontrÃ³ con una copia. La copia advirtiÃ³ al pequeÃ±o texto simulado de que en el lugar del que ella venÃ­a, la habÃ­an reescrito miles de veces y que todo lo que habÃ­a quedado de su original era la palabra &#34;y&#34;, asÃ­ que mÃ¡s le valÃ­a al pequeÃ±o texto simulado volver a su paÃ­s, donde estarÃ­a mucho mÃ¡s seguro. Pero nada de lo dicho por la copia pudo convencerlo, de manera que al cabo de poco tiempo, unos pÃ©rfidos redactores publicitarios lo encontraron y emborracharon con Longe y Parole para llevÃ¡rselo despuÃ©s a su agencia, donde abusaron de Ã©l para sus proyectos, una y otra vez. Y si aÃºn no lo han reescrito, lo siguen utilizando hasta ahora.Muy lejos, mÃ¡s allÃ¡ de las montaÃ±as de palabras, alejados de los paÃ­ses de las vocales y las consonantes, viven los textos simulados. Viven aislados en casas de letras, en la costa de la semÃ¡ntica, un gran ocÃ©ano de lenguas. Un riachuelo llamado Pons fluye por su pueblo y los abastece con las normas', '2018-05-17 16:18:26', 'https://images7.alphacoders.com/920/920490.png'),
(19, 1, 'Kafka', 'Una maÃ±ana, tras un sueÃ±o intranquilo, Gregorio Samsa se despertÃ³ convertido en un monstruoso insecto. Estaba echado de espaldas sobre un duro caparazÃ³n y, al alzar la cabeza, vio su vientre convexo y oscuro, surcado por curvadas callosidades, sobre el que casi no se aguantaba la colcha, que estaba a punto de escurrirse hasta el suelo. Numerosas patas, penosamente delgadas en comparaciÃ³n con el grosor normal de sus piernas, se agitaban sin concierto. - Â¿QuÃ© me ha ocurrido? No estaba soÃ±ando. Su habitaciÃ³n, una habitaciÃ³n normal, aunque muy pequeÃ±a, tenÃ­a el aspecto habitual. Sobre la mesa habÃ­a desparramado un muestrario de paÃ±os - Samsa era viajante de comercio-, y de la pared colgaba una estampa recientemente recortada de una revista ilustrada y puesta en un marco dorado. La estampa mostraba a una mujer tocada con un gorro de pieles, envuelta en una estola tambiÃ©n de pieles, y que, muy erguida, esgrimÃ­a un amplio manguito, asimismo de piel, que ocultaba todo su antebrazo. Gregorio mirÃ³ hacia la ventana; estaba nublado, y sobre el cinc del alfÃ©izar repiqueteaban las gotas de lluvia, lo que le hizo sentir una gran melancolÃ­a. Â«Bueno -pensÃ³-; Â¿y si siguiese durmiendo un rato y me olvidase de todas estas locuras?Â» Pero no era posible, pues Gregorio tenÃ­a la costumbre de dormir sobre el lado derecho, y su actual estado no le permitÃ­a adoptar tal postura. Por mÃ¡s que se esforzara volvÃ­a a quedar de espaldas. IntentÃ³ en vano esta operaciÃ³n numerosas veces; cerrÃ³ los ojos para no tener que ver aquella confusa agitaciÃ³n de patas, que no cesÃ³ hasta que notÃ³ en el costado un dolor leve y punzante, un dolor jamÃ¡s sentido hasta entonces. - Â¡QuÃ© cansada es la profesiÃ³n que he elegido! -se dijo-. Siempre de viaje. Las preocupaciones son mucho mayores cuando se trabaja fuera, por no hablar de las molestias propias de los viajes: estar pendiente de los enlaces de los trenes; la comida mala, irregular; relaciones que cambian constantemente, que nunca llegan a ser verdaderamente cordiales, y en las que no tienen cabida los sentimientos. Â¡Al diablo con todo! SintiÃ³ en el vientre una ligera picazÃ³n. Lentamente, se estirÃ³ sobre la espalda en direcciÃ³n a la cabecera de la cama, para poder alzar mejor la cabeza. Vio que el sitio que le picaba estaba cubierto de extraÃ±os untitos blancos. IntentÃ³ rascarse con una pata; pero tuvo que retirarla inmediatamente, pues el roce', '2018-05-17 16:32:50', 'https://images.alphacoders.com/917/917846.jpg'),
(20, 2, 'Loren Ipsum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac', '2018-05-17 16:49:53', 'https://images4.alphacoders.com/105/105706.jpg'),
(21, 2, 'Pangrama', 'Quiere la boca exhausta vid, kiwi, piÃ±a y fugaz jamÃ³n. Fabio me exige, sin tapujos, que aÃ±ada cerveza al whisky. Jovencillo emponzoÃ±ado de whisky, Â¡quÃ© figurota exhibes! La cigÃ¼eÃ±a tocaba cada vez mejor el saxofÃ³n y el bÃºho pedÃ­a kiwi y queso. El jefe buscÃ³ el Ã©xtasis en un imprevisto baÃ±o de whisky y gozÃ³ como un duque. ExhÃ­banse politiquillos zafios, con orejas kilomÃ©tricas y uÃ±as de gavilÃ¡n. El cadÃ¡ver de Wamba, rey godo de EspaÃ±a, fue exhumado y trasladado en una caja de zinc que pesÃ³ un kilo. El pingÃ¼ino Wenceslao hizo kilÃ³metros bajo exhaustiva lluvia y frÃ­o, aÃ±oraba a su querido cachorro. El veloz murciÃ©lago hindÃº comÃ­a feliz cardillo y kiwi. La cigÃ¼eÃ±a tocaba el saxofÃ³n detrÃ¡s del palenque de paja. Quiere la boca exhausta vid, kiwi, piÃ±a y fugaz jamÃ³n. Fabio me exige, sin tapujos, que aÃ±ada cerveza al whisky. Jovencillo emponzoÃ±ado de whisky, Â¡quÃ© figurota exhibes! La cigÃ¼eÃ±a tocaba cada vez mejor el saxofÃ³n y el bÃºho pedÃ­a kiwi y queso. El jefe buscÃ³ el Ã©xtasis en un imprevisto baÃ±o de whisky y gozÃ³ como un duque. ExhÃ­banse politiquillos zafios, con orejas kilomÃ©tricas y uÃ±as de gavilÃ¡n. El cadÃ¡ver de Wamba, rey godo de EspaÃ±a, fue exhumado y trasladado en una caja de zinc que pesÃ³ un kilo. El pingÃ¼ino Wenceslao hizo kilÃ³metros bajo exhaustiva lluvia y frÃ­o, aÃ±oraba a su querido cachorro. El veloz murciÃ©lago hindÃº comÃ­a feliz cardillo y kiwi. La cigÃ¼eÃ±a tocaba el saxofÃ³n detrÃ¡s del palenque de paja. Quiere la boca exhausta vid, kiwi, piÃ±a y fugaz jamÃ³n. Fabio me exige, sin tapujos, que aÃ±ada cerveza al whisky. Jovencillo emponzoÃ±ado de whisky, Â¡quÃ© figurota exhibes! La cigÃ¼eÃ±a tocaba cada vez mejor el saxofÃ³n y el bÃºho pedÃ­a kiwi y queso. El jefe buscÃ³ el Ã©xtasis en un imprevisto baÃ±o de whisky y gozÃ³ como un duque. ExhÃ­banse politiquillos zafios, con orejas kilomÃ©tricas y uÃ±as de gavilÃ¡n. El cadÃ¡ver de Wamba, rey godo de EspaÃ±a, fue exhumado y trasladado en una caja de zinc que pesÃ³ un kilo. El pingÃ¼ino Wenceslao hizo kilÃ³metros bajo exhaustiva lluvia y frÃ­o, aÃ±oraba a su querido cachorro. El veloz murciÃ©lago hindÃº comÃ­a feliz cardillo y kiwi. La cigÃ¼eÃ±a tocaba el saxofÃ³n detrÃ¡s del palenque de paja.Quiere la boca exhausta vid, kiwi, piÃ±a y fugaz jamÃ³n. Fabio me exige, sin tapujos, que aÃ±ada cerveza al whisky. Jovencillo emponzoÃ±ado de whisky, Â¡quÃ© figurota exhibes! La cigÃ¼eÃ±a tocaba cada', '2018-05-17 16:58:50', 'https://images7.alphacoders.com/915/915555.png'),
(23, 1, 'A notice without image ', 'When u don&#39;t put any imagen, I loaded one by default.Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu ', '2018-05-17 17:15:53', 'https://images5.alphacoders.com/901/901185.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`) VALUES
(1, 'Mario', 'marioarnedo1@gmail.com', '926e27eecdbc7a18858b3798ba99bddd', '2018-05-15 18:47:37'),
(2, 'Profesor', 'profesor@profe.com', '926e27eecdbc7a18858b3798ba99bddd', '2018-05-17 16:17:05');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
