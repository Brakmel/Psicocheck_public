-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2024 a las 11:28:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_register`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(1500) NOT NULL,
  `hora` datetime DEFAULT current_timestamp(),
  `url` varchar(255) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `apodo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `mensaje`, `hora`, `url`, `Rol`, `apodo`) VALUES
(1, 'He estado sintiéndome muy estresado en el trabajo últimamente y no sé cómo manejarlo.', '2024-07-12 10:00:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif', '', 'Juan123'),
(2, 'Juan, es importante tomarse pequeños descansos durante el día y practicar técnicas de respiración. También podrías considerar hablar con tu jefe sobre tu carga de trabajo.', '2024-07-12 10:05:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdno5bjBlNWdobWM3NGt4OXdhM3luMTZ0dGFscG1ibmo2MmowejRxdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/OHs6JJvRA4v7hsxuzF/giphy.gif', 'psicologo', 'DraMartinez'),
(3, '¡Gracias, Dra. Martinez! Intentaré implementar esas sugerencias.', '2024-07-12 10:10:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', '', 'Juan123'),
(4, 'Me siento solo y no sé cómo hacer amigos nuevos.', '2024-07-12 10:15:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMnkycHU4YjlnZjBxeGt2M3Ryb3dxZG50OWIwYTRzbnF6YmhrcWV6eSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/DXsNXjpBUomgYQXCiG/giphy.gif', '', 'Ana22'),
(5, 'Ana, un buen comienzo podría ser unirte a clubes o grupos que compartan tus intereses. Además, intenta ser más abierta y amigable con las personas que conozcas.', '2024-07-12 10:20:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExaHdwejBjNzgwZmo3aDc0YnZvNnNtcTExcm01NXJibHkxYXFoamRxYSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/k8kITi9SAwe9JWbUaH/giphy.gif', 'psicologo', 'DrGarcia'),
(6, 'He tenido problemas para dormir últimamente. ¿Algún consejo?', '2024-07-12 10:25:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', '', 'CarlosM'),
(7, 'Carlos, intenta establecer una rutina de sueño regular, evita el uso de dispositivos electrónicos antes de dormir y considera practicar la meditación.', '2024-07-12 10:30:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExd2JzMWl3Nnp2Nzl3enAxN2thMWJ1cWo4cnU0YmNuOXR6OTZobGt3ZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/nU2M9iPoyY9qYKGTYT/giphy.gif', 'psicologo', 'PsicologaLuna'),
(8, 'Me preocupa que mis hijos estén pasando demasiado tiempo frente a las pantallas.', '2024-07-12 10:35:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'MamaPreocupada'),
(9, 'Podrías establecer límites claros sobre el tiempo de pantalla y fomentar actividades al aire libre o juegos físicos para tus hijos.', '2024-07-12 10:40:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif', 'psicologo', 'DrFernandez'),
(10, 'Estoy lidiando con la pérdida de un ser querido y me cuesta sobrellevarlo.', '2024-07-12 10:45:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', '', 'Dolorida56'),
(11, 'Es normal sentirse así. Permítete sentir tus emociones y considera hablar con un terapeuta que pueda ayudarte a procesar tu duelo.', '2024-07-12 10:50:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', 'psicologo', 'DraMartinez'),
(12, 'Tengo miedo de hablar en público y me pongo muy nervioso.', '2024-07-12 10:55:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMnkycHU4YjlnZjBxeGt2M3Ryb3dxZG50OWIwYTRzbnF6YmhrcWV6eSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/DXsNXjpBUomgYQXCiG/giphy.gif', '', 'Timido89'),
(13, 'Practicar tu discurso varias veces y visualizar un resultado positivo puede ayudarte a ganar confianza. También podrías tomar clases de oratoria.', '2024-07-12 11:00:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', 'psicologo', 'DrGarcia'),
(14, 'Mis padres no entienden mi pasión por la música y me siento incomprendido.', '2024-07-12 11:05:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'Musico16'),
(15, 'Intenta comunicarte con ellos y explicarles por qué la música es importante para ti. A veces, los padres necesitan entender tu perspectiva.', '2024-07-12 11:10:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', 'psicologo', 'PsicologaLuna'),
(16, 'Estoy abrumado por la cantidad de tareas que tengo en la universidad.', '2024-07-12 11:15:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'EstudianteAgobiado'),
(17, 'Prioriza tus tareas, establece un horario y no dudes en pedir ayuda a tus profesores o compañeros si lo necesitas.', '2024-07-12 11:20:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', 'psicologo', 'DrFernandez'),
(18, 'Me siento muy inseguro acerca de mi apariencia física.', '2024-07-12 11:25:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', '', 'Inseguro99'),
(19, 'Recuerda que la autoestima viene desde dentro. Trata de enfocarte en tus cualidades positivas y busca actividades que te hagan sentir bien contigo mismo.', '2024-07-12 11:30:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', 'psicologo', 'DraMartinez'),
(20, 'Tengo problemas para concentrarme en mis estudios.', '2024-07-12 11:35:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'EstudianteDistraido'),
(21, 'Intenta establecer un ambiente de estudio libre de distracciones, haz pausas regulares y usa técnicas como el método Pomodoro.', '2024-07-12 11:40:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', 'psicologo', 'DrGarcia'),
(22, 'Estoy preocupado por mi futuro profesional.', '2024-07-12 11:45:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'Preocupado20'),
(23, 'Es normal sentirse así. Trata de definir tus objetivos y considera hablar con un orientador profesional para explorar tus opciones.', '2024-07-12 11:50:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', 'psicologo', 'PsicologaLuna'),
(24, 'Me cuesta mantener una dieta equilibrada.', '2024-07-12 11:55:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'Gourmet22'),
(25, 'Planificar tus comidas con antelación y aprender sobre nutrición puede ayudarte a tomar decisiones más saludables.', '2024-07-12 12:00:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', 'psicologo', 'DrFernandez'),
(26, 'Tengo dificultades para expresar mis sentimientos a mi pareja.', '2024-07-12 12:05:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', '', 'RomanticoTímido'),
(27, 'La comunicación abierta es clave. Intenta encontrar momentos tranquilos para hablar y ser honesto acerca de cómo te sientes.', '2024-07-12 12:10:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', 'psicologo', 'DraMartinez'),
(28, 'Me siento estancado en mi trabajo y no sé cómo avanzar.', '2024-07-12 12:15:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif', '', 'TrabajadorFrustrado'),
(29, 'Considera hablar con tu jefe sobre oportunidades de desarrollo o formación. También podrías explorar nuevas habilidades que te interesen.', '2024-07-12 12:20:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdno5bjBlNWdobWM3NGt4OXdhM3luMTZ0dGFscG1ibmo2MmowejRxdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/OHs6JJvRA4v7hsxuzF/giphy.gif', 'psicologo', 'DrGarcia'),
(30, 'He estado teniendo conflictos con mis compañeros de trabajo.', '2024-07-12 12:25:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', '', 'Conflicto2024'),
(31, 'Es importante abordar los conflictos de manera constructiva. Intenta comunicarte abiertamente y buscar soluciones juntos.', '2024-07-12 12:30:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', 'psicologo', 'PsicologaLuna'),
(32, 'Me siento inseguro acerca de mis habilidades como padre.', '2024-07-12 12:35:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExd2JzMWl3Nnp2Nzl3enAxN2thMWJ1cWo4cnU0YmNuOXR6OTZobGt3ZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/nU2M9iPoyY9qYKGTYT/giphy.gif', '', 'PadreNervioso'),
(33, 'No hay padres perfectos. Busca apoyo, comparte tus experiencias con otros padres y sigue aprendiendo y adaptándote.', '2024-07-12 12:40:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', 'psicologo', 'DrFernandez'),
(34, 'Me preocupa que mi pareja me sea infiel.', '2024-07-12 12:45:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'PreocupadoPorAmor'),
(35, 'La confianza es fundamental en una relación. Habla con tu pareja sobre tus inquietudes y trabaja juntos en fortalecer vuestra relación.', '2024-07-12 12:50:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', 'psicologo', 'DraMartinez'),
(36, 'Estoy luchando con problemas de autoestima.', '2024-07-12 12:55:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'Inseguro21'),
(37, 'Es fundamental reconocer tus logros y no compararte con otros. Practica el auto-cuidado y rodeate de personas que te apoyen.', '2024-07-12 13:00:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', 'psicologo', 'DrGarcia'),
(38, 'Me siento agotado mentalmente por la presión en el trabajo.', '2024-07-12 13:05:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif', '', 'Exhausto99'),
(39, 'Intenta establecer límites claros entre tu vida laboral y personal. Practica actividades que te relajen y te gusten en tu tiempo libre.', '2024-07-12 13:10:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', 'psicologo', 'PsicologaLuna'),
(40, 'Estoy teniendo problemas para adaptarme a mi nuevo trabajo.', '2024-07-12 13:15:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', '', 'NuevoEmpleado22'),
(41, 'Es normal sentirse así al principio. Intenta conocer a tus compañeros y no dudes en pedir ayuda cuando la necesites.', '2024-07-12 13:20:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', 'psicologo', 'DrFernandez'),
(42, 'Siento que no puedo confiar en nadie.', '2024-07-12 13:25:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdno5bjBlNWdobWM3NGt4OXdhM3luMTZ0dGFscG1ibmo2MmowejRxdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/OHs6JJvRA4v7hsxuzF/giphy.gif', '', 'Desconfiado89'),
(43, 'La confianza se construye con el tiempo. Trata de establecer relaciones saludables y comunicativas.', '2024-07-12 13:30:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif', 'psicologo', 'DraMartinez'),
(44, 'No sé cómo manejar mis niveles de estrés.', '2024-07-12 13:35:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif', '', 'Estresado2024'),
(45, 'Practica técnicas de relajación como la meditación o el yoga, y asegúrate de mantener un equilibrio entre el trabajo y el ocio.', '2024-07-12 13:40:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', 'psicologo', 'DrGarcia'),
(46, 'Estoy pasando por una ruptura amorosa y me siento devastado.', '2024-07-12 13:45:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', '', 'CorazonRoto34'),
(47, 'Permítete sentir y procesar tus emociones. Rodéate de amigos y familia que te apoyen y considera hablar con un terapeuta.', '2024-07-12 13:50:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif', 'psicologo', 'PsicologaLuna'),
(48, 'No sé cómo lidiar con el rechazo.', '2024-07-12 13:55:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif', '', 'Rechazado56'),
(49, 'El rechazo es parte de la vida y cada experiencia es una oportunidad para aprender y crecer. Mantén una actitud positiva y sigue adelante.', '2024-07-12 14:00:00', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif', 'psicologo', 'DrFernandez'),
(494, ' Me encanta Psicocheck!', '2024-07-12 05:14:54', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExaHdwejBjNzgwZmo3aDc0YnZvNnNtcTExcm01NXJibHkxYXFoamRxYSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/k8kITi9SAwe9JWbUaH/giphy.gif', '', 'Melon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologos`
--

CREATE TABLE `psicologos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(190) NOT NULL,
  `modalidad` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `especialidad` varchar(20) DEFAULT NULL,
  `experiencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `psicologos`
--

INSERT INTO `psicologos` (`id`, `nombre`, `modalidad`, `descripcion`, `sexo`, `precio`, `foto`, `especialidad`, `experiencia`) VALUES
(1, 'María López', 'Presencial', 'Psicóloga clínica especializada en terapia cognitivo-conductual para adultos. María tiene más de 15 años de experiencia ayudando a clientes a gestionar la ansiedad, depresión y estrés. Su enfoque terapéutico se centra en técnicas de reestructuración cognitiva y habilidades de afrontamiento.', 'Femenino', '15000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 15),
(2, 'Pedro Martínez', 'Online', 'Psicólogo clínico con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Pedro utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultor educativo.', 'Masculino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 7),
(3, 'Laura Rodríguez', 'Presencial', 'Psicoterapeuta especializada en terapia humanista-existencial para adultos jóvenes. Laura facilita procesos de autoconocimiento y desarrollo personal, promoviendo el crecimiento emocional y la autenticidad. Tiene formación en mindfulness y terapia de aceptación y compromiso.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 5),
(4, 'Juan Pérez', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Juan utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Masculino', '14000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 10),
(5, 'Ana Gutiérrez', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Ana trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo. Tiene más de 10 años de experiencia en el campo clínico y educativo.', 'Femenino', '11000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto mayor', 10),
(6, 'Diego Sánchez', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Diego tiene experiencia en el tratamiento de trastornos de ansiedad, depresión y trauma, utilizando técnicas basadas en la evidencia para promover el bienestar emocional y el cambio positivo.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 8),
(7, 'Valentina Torres', 'Presencial', 'Psicoterapeuta con enfoque integrador, combinando técnicas de terapia cognitivo-conductual y gestalt. Valentina trabaja con adultos jóvenes para explorar emociones profundas y promover el crecimiento personal. Ha trabajado en centros de salud mental y como consultora independiente.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 6),
(8, 'Gabriel Silva', 'Online', 'Psicólogo clínico especializado en terapia breve centrada en soluciones para adultos. Gabriel ayuda a sus pacientes a identificar y alcanzar metas terapéuticas concretas en un período de tiempo limitado. Ha trabajado en entornos clínicos y comunitarios, adaptando su enfoque a las necesidades individuales.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4),
(9, 'Camila Martínez', 'Presencial', 'Psicóloga clínica con enfoque en terapia humanista-existencial para adultos jóvenes. Camila acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Femenino', '14500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 9),
(10, 'Andrés Gómez', 'Online', 'Psicólogo clínico con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Andrés utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultor educativo.', 'Masculino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 2),
(11, 'Carolina Hernández', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Carolina trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo. Tiene más de 10 años de experiencia en el campo clínico y educativo.', 'Femenino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'infantil', 10),
(12, 'Martín López', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Martín utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 3),
(13, 'Fernanda Torres', 'Presencial', 'Psicoterapeuta con enfoque integrador, combinando técnicas de terapia cognitivo-conductual y gestalt. Fernanda trabaja con adultos jóvenes para explorar emociones profundas y promover el crecimiento personal. Ha trabajado en centros de salud mental y como consultora independiente.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 1),
(14, 'Ricardo González', 'Online', 'Psicólogo clínico especializado en terapia breve centrada en soluciones para adultos. Ricardo ayuda a sus pacientes a identificar y alcanzar metas terapéuticas concretas en un período de tiempo limitado. Ha trabajado en entornos clínicos y comunitarios, adaptando su enfoque a las necesidades individuales.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto mayor', 15),
(15, 'Sofía Herrera', 'Presencial', 'Psicóloga clínica con enfoque en terapia humanista-existencial para adultos jóvenes. Sofía acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Femenino', '14500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 8),
(16, 'Gabriela Silva', 'Online', 'Psicóloga clínica con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Gabriela utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultora educativa.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 2),
(17, 'Martina Gómez', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Martina trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo. Tiene más de 10 años de experiencia en el campo clínico y educativo.', 'Femenino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto mayor', 10),
(18, 'Andrea Martínez', 'Online', 'Psicóloga clínica con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Andrea utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Femenino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 3),
(19, 'Luis González', 'Presencial', 'Psicólogo clínico con enfoque en terapia humanista-existencial para adultos jóvenes. Luis acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Masculino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 9),
(20, 'Gabriel Martínez', 'Online', 'Psicólogo clínico con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Gabriel utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultor educativo.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 7),
(21, 'María Rodríguez', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. María trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo. Tiene más de 10 años de experiencia en el campo clínico y educativo.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'infantil', 15),
(22, 'Pedro Gómez', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Pedro utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Masculino', '14000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 6),
(23, 'Laura Martínez', 'Presencial', 'Psicóloga clínica con enfoque en terapia humanista-existencial para adultos jóvenes. Laura acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Femenino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4),
(24, 'Andrea Rodríguez', 'Online', 'Psicóloga clínica con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Andrea utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultora educativa.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 2),
(25, 'Diego Torres', 'Presencial', 'Psicólogo clínico con enfoque en terapia humanista-existencial para adultos jóvenes. Diego acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 0),
(26, 'Gabriela Martín', 'Online', 'Psicóloga clínica con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Gabriela utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos. Ha trabajado en clínicas privadas y como consultora educativa.', 'Femenino', '14000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 3),
(27, 'Martín Pérez', 'Presencial', 'Psicólogo clínico especializado en terapia familiar sistémica. Martín trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo. Tiene más de 10 años de experiencia en el campo clínico y educativo.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto mayor', 10),
(28, 'Carolina Gómez', 'Online', 'Psicóloga clínica con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Carolina utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 6),
(29, 'Laura Gutiérrez', 'Presencial', 'Psicóloga clínica con enfoque en terapia humanista-existencial para adultos jóvenes. Laura acompaña a sus clientes en un proceso de autoexploración y aceptación, facilitando la integración de partes disociadas de la personalidad y promoviendo el bienestar emocional.', 'Femenino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 7),
(30, 'Diego Pérez', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Diego utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima. Ha trabajado en hospitales y en práctica privada, adaptando su enfoque a las necesidades individuales de cada cliente.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlmOWkzYzZ0ODVqejZxdWx4aGZwazNrMTdpa2lhMnlsMXk2dDNmeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 5),
(31, 'Paula Rojas', 'Presencial', 'Psicóloga clínica especializada en terapia cognitivo-conductual para adultos. Paula tiene experiencia ayudando a clientes a gestionar la ansiedad y la depresión.', 'Femenino', '15000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 5),
(32, 'Carlos Méndez', 'Online', 'Psicólogo clínico con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Carlos utiliza técnicas creativas y centradas en el presente.', 'Masculino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 7),
(33, 'Marta Ruiz', 'Presencial', 'Psicoterapeuta especializada en terapia humanista-existencial para adultos jóvenes. Marta facilita procesos de autoconocimiento y desarrollo personal.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4),
(34, 'Fernando Álvarez', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Fernando utiliza técnicas basadas en la evidencia.', 'Masculino', '14000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 8),
(35, 'Lucía García', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Lucía trabaja con familias para mejorar la comunicación.', 'Femenino', '11000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto mayor', 10),
(36, 'Javier Herrera', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Javier tiene experiencia en el tratamiento de ansiedad y depresión.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 7),
(37, 'Andrea Blanco', 'Presencial', 'Psicoterapeuta con enfoque integrador. Andrea trabaja con adultos jóvenes para explorar emociones y promover el crecimiento personal.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 5),
(38, 'Santiago López', 'Online', 'Psicólogo clínico especializado en terapia breve centrada en soluciones para adultos. Santiago ayuda a sus pacientes a alcanzar metas terapéuticas concretas.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4),
(39, 'Claudia Pérez', 'Presencial', 'Psicóloga clínica con enfoque en terapia humanista-existencial para adultos jóvenes. Claudia acompaña a sus clientes en un proceso de autoexploración y aceptación.', 'Femenino', '14500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 9),
(40, 'Ricardo Torres', 'Online', 'Psicólogo clínico con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Ricardo utiliza técnicas creativas y centradas en el presente.', 'Masculino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 2),
(41, 'Patricia Díaz', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Patricia trabaja con familias para mejorar la comunicación y las relaciones interpersonales.', 'Femenino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'infantil', 10),
(42, 'Hugo Morales', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Hugo utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 6),
(43, 'Natalia Romero', 'Presencial', 'Psicoterapeuta con enfoque integrador. Natalia trabaja con adultos jóvenes para explorar emociones profundas y promover el crecimiento personal.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 3),
(44, 'Lorena Vargas', 'Online', 'Psicóloga clínica especializada en terapia breve centrada en soluciones para adultos. Lorena ayuda a sus pacientes a identificar y alcanzar metas terapéuticas concretas en un período de tiempo limitado.', 'Femenino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4),
(45, 'José García', 'Presencial', 'Psicólogo clínico con enfoque en terapia humanista-existencial para adultos jóvenes. José acompaña a sus clientes en un proceso de autoexploración y aceptación.', 'Masculino', '14500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 9),
(46, 'Cristina Gómez', 'Online', 'Psicóloga clínica con enfoque en terapia gestalt para adolescentes y adultos jóvenes. Cristina utiliza técnicas creativas y centradas en el presente para ayudar a sus pacientes a explorar emociones y resolver conflictos internos.', 'Femenino', '13000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adolescente', 2),
(47, 'Mariana Díaz', 'Presencial', 'Psicóloga clínica especializada en terapia familiar sistémica. Mariana trabaja con familias para mejorar la comunicación y las relaciones interpersonales, promoviendo un entorno familiar saludable y de apoyo.', 'Femenino', '12000', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'infantil', 10),
(48, 'Raúl Herrera', 'Online', 'Psicólogo clínico con enfoque en terapia cognitivo-conductual para adultos y adolescentes. Raúl utiliza técnicas basadas en la evidencia para abordar trastornos de ansiedad, depresión y problemas de autoestima.', 'Masculino', '12500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 6),
(49, 'Gabriela Torres', 'Presencial', 'Psicoterapeuta con enfoque integrador, combinando técnicas de terapia cognitivo-conductual y gestalt. Gabriela trabaja con adultos jóvenes para explorar emociones profundas y promover el crecimiento personal.', 'Femenino', '13500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 7),
(50, 'Rodrigo Martínez', 'Online', 'Psicólogo clínico especializado en terapia breve centrada en soluciones para adultos. Rodrigo ayuda a sus pacientes a identificar y alcanzar metas terapéuticas concretas en un período de tiempo limitado.', 'Masculino', '11500', 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjY4NjI3NzJkMDMyNjFkMWE3NmQ1OTgzYmRhMTUzZWIxNTgyMjA5NyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UW2tFD1sk7FB389Jg3/giphy.gif', 'adulto', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `apodo` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `razon` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_token` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `apodo`, `email`, `razon`, `password`, `Rol`, `is_verified`, `verification_token`, `password_reset_token`) VALUES
(63, 'Huecitos', 'Huecitos@gmail.com', 'Psicologo', '$2y$10$DZYjz4uN7AL.dOGZMDygze1qXg8DeM0rOOIQ4WoyCwYdeSGsyy7cq', 'Psicologo', 0, NULL, NULL),
(68, 'Brakmel', 'MelonCITO@gmail.com', 'Depresion', '$2y$10$dYsV8/W0x3Hw9Exobcrvj.LQZzH6v6BCGp0xDdU.3col5NYqyB3Me', '', 0, NULL, NULL),
(69, 'Melon', 'Melon@gmail.com', '123qwe123qwe', '$2y$10$YDbOYHdGvoOt4EEC474gbOwVNcAf.IBo9v0q2hJcXPmIbG6thW.ge', '', 0, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
