-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: db    Database: quiz
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `quiz`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `quiz`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `question_id` bigint(20) unsigned NOT NULL COMMENT '設問のid',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '選択肢の内容',
  `torf` tinyint(4) NOT NULL COMMENT '正解不正解',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='選択肢';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'ヒガラ',0),(2,1,'シマエナガ　',1),(3,1,'キクイタダキ',0),(4,1,'アオガラ',0),(5,2,'ヤマネコ',0),(6,2,'スナドリネコ',0),(7,2,'スナネコ　',1),(8,2,'アンデスネコ',0),(9,3,'1つ',0),(10,3,'2つ',0),(11,3,'3つ　',1),(12,3,'4つ',0),(13,4,'人間',0),(14,4,'チンパンジー',0),(15,4,'ゾウ',0),(16,4,'キリン　',1),(17,5,'父カメの体調',0),(18,5,'生まれた時の温度　',1),(19,5,'生まれた時の時間',0),(20,5,'母カメの体調',0),(21,6,'形の違い　',1),(22,6,'中の具の違い',0),(23,6,'海苔をつけるかつけないかの違い',0),(24,6,'違いはない',0),(25,7,'塩→醤油→砂糖',0),(26,7,'醤油→砂糖→塩',0),(27,7,'砂糖→塩→醤油　',1),(28,7,'醤油→塩→砂糖',0),(29,8,'クッキー　',1),(30,8,'マドレーヌ',0),(31,8,'マシュマロ',0),(32,8,'マカロン',0),(33,9,'すぐに焼く',0),(34,9,'10分間置く　',1),(35,9,'水で洗う',0),(36,9,'キッチンペーパーでふく',0),(37,10,'馬の肉',0),(38,10,'鹿の肉　',1),(39,10,'猪の肉',0),(40,10,'兎の肉',0),(41,11,'ゲームウォッチ',0),(42,11,'Xbox　',1),(43,11,'セガサターン',0),(44,11,'スーパーファミコン',0),(45,12,'任天堂',0),(46,12,'セガ',0),(47,12,'コナミ　',1),(48,12,'バンダイナムコ',0),(49,13,'TPS',0),(50,13,'SCP',0),(51,13,'TPO',0),(52,13,'FPS　',1),(53,14,'アルバート・ウェスカー　',1),(54,14,'ジェームス・マーカス',0),(55,14,'レベッカ・チェンバース',0),(56,14,'ウィリアム・バーキン',0),(57,15,'赤い彗星　',1),(58,15,'青い彗星',0),(59,15,'黒い彗星',0),(60,15,'白い彗星',0),(61,16,'零号機　',1),(62,16,'初号機',0),(63,16,'2号機',0),(64,16,'3号機',0),(65,17,'ふりふりチップス',0),(66,17,'グルメスパイザー　',1),(67,17,'ふりかけメーカー',0),(68,17,'ハイスピードミル',0),(69,18,'花子',0),(70,18,'葵枝　',1),(71,18,'禰?豆子',0),(72,18,'琴葉',0),(73,19,'無量空処　',1),(74,19,'伏魔御厨子',0),(75,19,'嵌合暗翳庭',0),(76,19,'蓋棺鉄囲山',0),(77,20,'ヒップホップ',0),(78,20,'ジャズ　',1),(79,20,'ソウル',0),(80,20,'レゲエ',0),(81,21,'サザンオールスターズ',0),(82,21,'B’z　',1),(83,21,'Mr.Children',0),(84,21,'浜崎あゆみ',0),(85,22,'海のYeah！(サザンオールスターズ)',0),(86,22,'DEEP RIVER(宇多田ヒカル)',0),(87,22,'A BEST(浜崎あゆみ)　',1),(88,22,'ALL SINGLES BEST (コブクロ)',0),(89,23,'テンポ　',1),(90,23,'音域',0),(91,23,'アクセント',0),(92,23,'音の種類',0),(93,24,'ソプラノ',0),(94,24,'バリトン',0),(95,24,'テノール　',1),(96,24,'バス',0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '設問の本文',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='設問';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'SNSで話題の「雪の妖精」の愛称で親しまれている野鳥の名前は？'),(2,'昨年3月、日本の神戸どうぶつ王国にて初めて飼育展示がされた「砂漠の天使」とも呼ばれる動物の名前は？'),(3,'イルカの心臓の数は？'),(4,'地球上で最も高血圧な動物は？'),(5,'カメの性別を決めるのは何？'),(6,'「おにぎり」と「おむすび」の違いは何？'),(7,'塩、醤油、砂糖、入れる順番は？'),(8,'オランダ語で「小さなパンケーキ」という意味の洋菓子は何？'),(9,'焼き魚を作る時、魚に塩をふってからどうする？'),(10,'「もみじ」とは何の肉のこと？'),(11,'マイクロソフトから発売された家庭用ゲーム機といえば？'),(12,'「Dance Dance Revolution」、「beatmania」、「jubeat」これらの開発元は？'),(13,'主人公と同じ視点で操作するスタイルの3Dアクションシューティングの総称は？'),(14,'「バイオハザード0」の黒幕は？'),(15,'「機動戦士ガンダム」のシャアはニックネーム何？'),(16,'「新世紀エヴァンゲリオン」で綾波レイが乗るのは何号機？'),(17,'バンダイから発売された「トリコ」の玩具は？'),(18,'「鬼滅の刃」で鬼に殺された竈門炭治郎の母の名前は？'),(19,'「呪術廻戦」の五条悟の使う領域展開の名前は？'),(20,'ブルーノートと呼ばれる音階や即興演奏、シンコペーションのリズムなどが特徴の1つである、アメリカのニューオリンズで生まれた音楽は何？'),(21,'次のうち、CD累計売上枚数が一番多いのは？'),(22,'次のうち、一番売れたCDアルバムは？'),(23,'BPM(Beats Per Minute)とは？'),(24,'一般的な合唱で、アルトとバスの間に置かれるパートは何？');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:21:04
