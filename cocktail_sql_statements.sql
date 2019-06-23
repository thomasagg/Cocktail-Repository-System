-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2019 at 10:19 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cocktails`
--

-- --------------------------------------------------------

--
-- Table structure for table `cocktail`
--

DROP TABLE IF EXISTS `cocktail`;
CREATE TABLE IF NOT EXISTS `cocktail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `instruction` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cocktail`
--

INSERT INTO `cocktail` (`id`, `name`, `instruction`) VALUES
(1, 'Mojito', '<ol><li>Muddle sugar and lime wedges together in a glass.<ul><li>Press down on 2 wedges of lime and 2 teaspoons of caster sugar in<br>a tankard or jar using a large spoon or pestle to extract flavour and aroma.</li></ul></li><li>Muddle mint.<ul><li>Pick 12 leaves from a sprig of mint and place in the glass. Press down <br>gently on the mint, together with the sugar and lime.</li></ul></li><li>Add ice to a glass.<ul><li>Add crushed ice so the glass is 3/4 full.</li></ul></li><li>Add Captain Morgan White Rum and soda.<ul><li>Pour in Captain Morgan White Rum and a dash of soda water.</li></ul></li><li>Stir with a spoon.<ul>	<li>Stir the mixture thoroughly using a bar spoon until well combined.</li></ul>\r\n</li><li>Add ice and a sprig of mint.<ul><li>Top up with more crushed ice and garnish with a sprig of mint.</li></ul></li></ol>'),
(2, 'Tequila Pina Colada', '<ol>\r\n	<li>Pour Don Julio Blanco Tequila, coconut cream and pineapple juice into a blender.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 50ml Don Julio Blanco Tequila, 50ml coconut cream and 110ml pineapple juice into a blender.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Blend together.\r\n		<ul>\r\n			<li>\r\n				Blend the ingredients together until smooth.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Half-fill a glass with ice.\r\n		<ul>\r\n			<li>\r\n				Half-fill a Snifter glass with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Pour the mixture into the glass.\r\n		<ul>\r\n			<li>\r\n				Pour the mixture from the blender into the glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Garnish with a slice of pineapple.\r\n		<ul>\r\n			<li>\r\n				Cut a slice of pineapple with a sharp knife on a cutting board and slot over the side of the glass to garnish.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add ice and a sprig of mint.\r\n</ol>'),
(3, 'Margarita', '<ol>\r\n	<li>Fill a shaker with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a cocktail shaker with cubed ice.	\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add Orange Liqueur, Don Julio Blanco Tequila and lime juice to the shaker.\r\n		<ul>\r\n			<li>\r\n				Use a jigger to measure 35ml Orange Liqueur, 50ml Don Julio Tequila and 25ml lime juice to the shaker.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Shake until cold.\r\n		<ul>\r\n			<li>\r\n				Shake until chilled.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Strain into a short glass.\r\n		<ul>\r\n			<li>\r\n				Using a cocktail strainer, strain into a short glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ol>'),
(4, 'Long Island Iced Tea', '<ol>\r\n	<li>Fill a shaker with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a cocktail shaker with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add Captain Morgan Original Spiced Gold, Smirnoff No. 21 Vodka, Gordon\'s London Dry Gin, orange liqueur, Don Julio Blanco Tequila, sugar syrup, lemon juice and lime juice to the shaker.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 17.5ml Captain Morgan Spiced, 17.5ml Smirnoff No.21 Vodka, 17.5ml Gordon\'s London Dry Gin, 17.5ml orange liqueur, 17.5ml Don Julio Blanco Tequila, 17.5ml sugar syrup, 15ml lemon juice and 17.5ml lime juice into a shaker.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Shake until cold.\r\n		<ul>\r\n			<li>\r\n				Shake the mixture vigorously until the surface of the cocktail shaker feels chilled.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Strain into a glass filled with ice.\r\n		<ul>\r\n			<li>\r\n				Use a cocktail strainer to strain the liquid into a Highball glass filled with cubes of ice.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Top up with cola.\r\n		<ul>\r\n			<li>\r\n				Pour cola into the drink to fill to the top of the glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Garnish with a lemon slice.\r\n		<ul>\r\n			<li>\r\n				Cut a slice of lemon with a sharp knife on a chopping board and place in the drink to garnish.\r\n			</li>\r\n		</ul>\r\n	</li>	\r\n</ol>'),
(5, 'Rum Caipirinha', '<ol>\r\n	<li>Cut lime wedges.\r\n		<ul>\r\n			<li>\r\n				Using a knife and chopping board, cut a lime into 4 wedges.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add the lime wedges and sugar to a glass.\r\n		<ul>\r\n			<li>\r\n				Place the lime wedges and 1tsp sugar into a tumbler.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Muddle the lime and sugar.\r\n		<ul>\r\n			<li>\r\n				Press down on the lime wedges and sugar in a highball glass using a muddler to extract juices and flavour.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Fill the glass with ice.\r\n		<ul>\r\n			<li>\r\n				Top up the glass with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Pour Captain Morgan Original Spiced Gold into the glass.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 50ml Captain Morgan Original Spiced Gold into the glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Stir thoroughly.\r\n		<ul>\r\n			<li>\r\n				Stir using a bar spoon until the mixture is well combined to complete your Caipirinha.\r\n			</li>\r\n		</ul>\r\n	</li>	\r\n</ol>'),
(6, 'Captain Morgan Original Rum Mai Tai', '<ol>\r\n	<li>Fill a shaker with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a cocktail shaker with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Pour Captain Morgan Original Rum, Orange Liqueur, lime juice, orgeat and pineapple juice into the shaker.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, pour 35ml Captain Morgan Original Rum, 10ml Orange Liqueur, 25ml lime juice, 10ml orgeat and 50ml pineapple juice into the shaker.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Shake until cold.\r\n		<ul>\r\n			<li>\r\n				Shake the mixture vigorously until the surface of the cocktail shaker feels chilled.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Strain the contents into a tall glass over ice.\r\n		<ul>\r\n			<li>\r\n				Using a strainer strain the cocktail into a tall glass over ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Garnish with an orange wedge.\r\n		<ul>\r\n			<li>\r\n				With a chopping board and sharp knife, cut an orange wedge and place in the drink to garnish.\r\n			</li>\r\n		</ul>\r\n</ol>'),
(7, 'Cosmopolitan', '<ol>\r\n	<li>Fill a shaker with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a cocktail shaker with crushed ice.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add Smirnoff No. 21 Vodka, orange liqueur, cranberry juice and lime juice into the shaker.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 35ml Smirnoff No. 21 Vodka, 10ml orange liqueur, 45ml cranberry juice and 10ml of lime juice into the shaker.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Shake until cold.\r\n		<ul>	\r\n			<li>\r\n				Shake vigorously using a cocktail shaker until the surface of the shaker feels chilled.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Strain into a martini glass.\r\n		<ul>\r\n			<li>\r\n				Using a cocktail strainer, strain the liquid into a martini glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Garnish with a twist of lime peel.\r\n		<ul>\r\n			<li>\r\n				Using a sharp knife and a chopping board, cut a piece of lime peel and twist the peel onto the rim of the glass to garnish.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ol>'),
(8, 'Sex on the Beach', '<ol>\r\n	<li>Fill a glass with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a tall glass with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Pour Archers Peach Schnapps, Smirnoff No. 21 Vodka, cranberry juice and orange juice into the glass.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 9ml Archers Peach Schnapps, 35ml Smirnoff No. 21 Vodka, 35ml cranberry juice and 35ml orange juice into the glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ol>'),
(9, 'Gin and Tonic', '<ol>\r\n	<li>Fill a glass with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a tall glass with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Pour Gordon\'s London Dry Gin, tonic water and lime juice into the glass.\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 25ml Gordon\'s London Dry Gin, 125ml tonic water and 10ml lime juice into the glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Garnish with lime wedges.\r\n		<ul>\r\n			<li>\r\n				With a chopping board and sharp knife, cut 2 wedges of lime to place in the drink to garnish.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ol>'),
(10, 'Espresso White Russian', '<ol>\r\n	<li>Fill a mixing glass with ice.\r\n		<ul>\r\n			<li>\r\n				Fill a mixing glass with ice cubes.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Add Smirnoff Espresso Vodka, Baileys with a hint of Coffee Flavour and milk to the glass\r\n		<ul>\r\n			<li>\r\n				Using a jigger, measure 25ml Smirnoff Espresso Vodka, 25ml Baileys with a hint of Coffee Flavour and 25ml full-fat milk into a short glass.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Stir thoroughly.\r\n		<ul>\r\n			<li>\r\n				Stir until the mixture is well-combined.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>Strain into a glass filled with ice.\r\n		<ul>\r\n			<li>\r\n				Using a cocktail strainer, strain into an Old Fashioned glass filled with ice cubes.\r\n			</li> \r\n		</ul>\r\n	</li>\r\n	<li>Garnish with chocolate-covered coffee beans.\r\n		<ul>\r\n			<li>\r\n				Place 3 chocolate-covered coffee beans on top of the drink to garnish.\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ol>'),
(23, 'Perfect Old Fashioned', '<ol><li>Place a sugar cube in a glass and add a dash of angostura bitters.<ul><li>Place a sugar cube in a short glass and soak with a few dashes of angostura bitters.</li></ul></li><li>Muddle until dissolved.<ul><li>Use a muddler to press down on the sugar cube and dissolve into the angostura bitters.</li></ul></li><li>Fill the glass with ice.<ul><li>Fill the glass with ice cubes.</li></ul></li><li>Pour in Johnnie Walker Black Label Blended Scotch Whisky.<ul><li>Using a jigger, measure 50ml of Johnnie Walker Black Label Blended Scotch Whisky and pour into the glass.</li></ul></li><li>Garnish with a cherry and orange slice.<ul><li>Using a chopping board cut a slice of orange with a sharp knife and place on top of the drink with one cherry to garnish.</li></ul></li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`) VALUES
(1, 'Tall glass'),
(2, 'Jigger'),
(3, 'Muddler'),
(4, 'Knife'),
(5, 'Bar spoon'),
(6, 'Crushed ice'),
(7, 'Chopping Board'),
(8, 'Blender'),
(9, 'Ice'),
(10, 'Short Glass'),
(11, 'Strainer'),
(12, 'Cocktail Shaker'),
(13, 'Bar spoon'),
(14, 'Stirrer'),
(20, 'Jigger'),
(19, 'Muddler'),
(18, 'Short Glass'),
(21, 'Ice'),
(22, 'Stirrer'),
(23, 'Knife'),
(24, 'Chopping Board'),
(25, 'Short Glass'),
(26, 'Muddler'),
(27, 'Jigger'),
(28, 'Ice'),
(29, 'Stirrer'),
(30, 'Knife'),
(31, 'Chopping Board');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_list`
--

DROP TABLE IF EXISTS `equipment_list`;
CREATE TABLE IF NOT EXISTS `equipment_list` (
  `cocktail_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `cocktail_id` (`cocktail_id`),
  KEY `equipment_id` (`equipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment_list`
--

INSERT INTO `equipment_list` (`cocktail_id`, `equipment_id`, `quantity`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(2, 1, 1),
(2, 2, 1),
(2, 4, 1),
(2, 7, 1),
(2, 8, 1),
(2, 8, 1),
(2, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 2, 1),
(3, 9, 1),
(3, 12, 1),
(4, 1, 1),
(4, 11, 1),
(4, 2, 1),
(4, 4, 1),
(4, 7, 1),
(5, 3, 1),
(5, 4, 1),
(5, 2, 1),
(5, 7, 1),
(5, 9, 1),
(5, 13, 1),
(6, 1, 1),
(6, 9, 1),
(6, 2, 1),
(6, 4, 1),
(6, 7, 1),
(6, 12, 1),
(6, 11, 1),
(7, 1, 1),
(7, 2, 1),
(7, 7, 1),
(7, 12, 1),
(7, 6, 1),
(7, 4, 1),
(8, 1, 1),
(8, 2, 1),
(8, 9, 1),
(8, 14, 1),
(9, 1, 1),
(9, 4, 1),
(10, 2, 1),
(9, 7, 1),
(9, 9, 1),
(10, 11, 1),
(9, 2, 1),
(10, 10, 1),
(22, 7, 1),
(22, 4, 1),
(22, 14, 1),
(22, 9, 1),
(22, 2, 1),
(22, 3, 1),
(22, 10, 1),
(23, 10, 1),
(23, 3, 1),
(23, 2, 1),
(23, 9, 1),
(23, 14, 1),
(23, 4, 1),
(23, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`) VALUES
(1, 'Captain Morgan White Rum '),
(2, 'Soda Water'),
(3, 'Caster Sugar'),
(4, 'Lime Wedge'),
(5, 'Mint Sprig'),
(6, 'Don Julio Blanco Tequila'),
(7, 'Coconut Cream'),
(8, 'Pineapple Juice'),
(9, 'Pineapple'),
(10, 'Orange Liqueur'),
(11, 'Lime Juice'),
(12, 'Captain Morgan Original Spiced Gold'),
(13, '\r\nSmirnoff No. 21 Vodka'),
(14, 'Gordon\'s London Dry Gin'),
(15, 'Sugar Syrup\r\n'),
(16, 'Lemon Juice\r\n'),
(17, 'Cola'),
(18, 'Lemon'),
(19, 'Sugar'),
(20, 'Lime'),
(21, 'Captain Morgan Original Rum'),
(22, 'Orgeat Syrup'),
(23, 'Orange'),
(24, 'Cranberry Juice'),
(25, 'Lime Twist'),
(26, 'Archers Peach Schnapps'),
(27, 'Orange Juice'),
(28, 'Tonic Water'),
(29, 'Smirnoff Espresso Flavoured Vodka'),
(30, 'Baileys Coffee Irish Cream Liqueur'),
(31, 'Milk'),
(32, 'Coffee Bean'),
(44, 'Johnnie Walker Black Label Blended Scotch Whisky'),
(45, 'Angostura Bitters'),
(46, 'Cherry');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_list`
--

DROP TABLE IF EXISTS `ingredient_list`;
CREATE TABLE IF NOT EXISTS `ingredient_list` (
  `cocktail_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` float DEFAULT NULL,
  `dosage` varchar(255) NOT NULL,
  KEY `cocktail_id` (`cocktail_id`),
  KEY `ingredient_id` (`ingredient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient_list`
--

INSERT INTO `ingredient_list` (`cocktail_id`, `ingredient_id`, `quantity`, `dosage`) VALUES
(1, 1, 50, 'ml.'),
(1, 2, 1, 'dash(es)'),
(1, 3, 2, 'tsp'),
(1, 4, 2, 'wedge(s)'),
(1, 5, 1, 'sprig(s)'),
(4, 18, 1, 'slice(s)'),
(4, 17, 1, 'top(s)'),
(4, 11, 18, 'ml'),
(4, 16, 18, 'ml'),
(4, 15, 18, 'ml'),
(4, 10, 18, 'ml'),
(4, 6, 18, 'ml'),
(4, 14, 18, 'ml'),
(4, 13, 18, 'ml'),
(4, 12, 18, 'ml'),
(2, 9, 3, 'slices'),
(2, 8, 110, 'ml'),
(2, 7, 50, 'ml'),
(2, 6, 50, 'ml'),
(3, 6, 50, 'ml'),
(3, 10, 35, 'ml'),
(3, 11, 25, 'ml'),
(5, 12, 50, 'ml'),
(5, 19, 1, 'tsp'),
(5, 20, 3, 'piece'),
(6, 21, 35, 'ml'),
(6, 10, 10, 'ml'),
(6, 11, 25, 'ml'),
(6, 22, 10, 'ml'),
(6, 8, 50, 'ml'),
(6, 23, 1, 'wedge'),
(7, 13, 35, 'ml'),
(7, 10, 10, 'ml'),
(7, 24, 45, 'ml'),
(7, 25, 1, 'twist'),
(7, 11, 10, 'ml'),
(8, 26, 9, 'ml'),
(8, 13, 35, 'ml'),
(8, 27, 35, 'ml'),
(8, 24, 35, 'ml'),
(9, 14, 25, 'ml'),
(9, 28, 125, 'ml'),
(9, 11, 10, 'ml'),
(9, 20, 2, 'wedges'),
(10, 29, 25, 'ml'),
(10, 30, 25, 'ml'),
(10, 31, 25, 'ml'),
(10, 32, 3, 'pieces'),
(10, 29, 25, 'ml'),
(10, 30, 25, 'ml'),
(10, 31, 25, 'ml'),
(10, 32, 3, 'pieces'),
(666, 666, 666, '666'),
(23, 45, 1, 'dash'),
(23, 44, 50, 'ml.'),
(22, 23, 1, 'slice'),
(22, 46, 1, 'piece'),
(22, 19, 1, 'cube'),
(22, 45, 1, 'dash'),
(22, 44, 50, 'ml.'),
(23, 19, 1, 'cube'),
(23, 46, 1, 'piece'),
(23, 23, 1, 'slice');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `user_id` int(11) NOT NULL,
  `cocktail_id` int(11) NOT NULL,
  `vote` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`user_id`, `cocktail_id`, `vote`) VALUES
(3, 6, 0),
(2, 6, 1),
(1, 6, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '123456', 'test@mail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
