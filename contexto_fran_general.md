# Contexto general — Fran Bacallado Martín

> Documento vivo. Actualizar al iniciar cada proyecto nuevo o cuando cambie el estado de uno existente.
> La documentación técnica detallada de cada proyecto vive en un fichero `contexto_fran_<nombre_proyecto>.md` dentro de la carpeta del proyecto.
> Repositorio central: **GitHub privado** → `fran-contexto-global`

---

## 1. Perfil personal

- **Nombre completo:** Francisco Bacallado Martín (Fran)
- **Edad:** 55 años
- **Situación personal:** Divorciado, con pareja. Dos hijos:
  - Hijo mayor: finalizando grado universitario en CAFIT.
  - Hijo menor: cursando Relaciones Internacionales en el extranjero (2º curso).
- **Ubicación:** Tenerife, Islas Canarias.

---

## 2. Perfil docente

- **Centro:** Salesianos La Cuesta (EPS San Juan Bosco), San Cristóbal de La Laguna, Tenerife.
  - Web: https://lacuesta.salesianos.edu/
- **Formación:** Ingeniero Electrónico.
- **Rol adicional:** Tutor de 1º CFGB — Electricidad y Electrónica.

### Módulos impartidos

| Ciclo | Sigla | Módulo |
|---|---|---|
| 1º CFGB Electricidad y Electrónica | EQL | Equipos Eléctricos y Electrónicos |
| CFGM Telecomunicaciones | EQM | Equipos Microelectrónicos |
| CFGS Automatización y Robótica Industrial | SIY | Sistemas de Medida y Regulación |
| CFGS Automatización y Robótica Industrial | ROB | Robótica Industrial |
| CFGS Automatización y Robótica Industrial | ISF / A10 | Instalaciones Solares Fotovoltaicas (asumida este curso) |

### Perfil del alumnado

- **CFGB:** Nivel académico bajo. Alta diversidad de necesidades educativas; porcentaje elevado de MENAs. Requiere adaptaciones metodológicas frecuentes.
- **CFGM / CFGS:** Nivel académico medio-bajo (menor que en años anteriores). Motivación variable.

### Plataformas docentes

- Moodle (exámenes y recursos)
- Google Classroom (entrega de prácticas)
- Plataforma de calificaciones del centro (pendiente confirmar nombre)

---

## 3. Forma de trabajar con Claude

### Comunicación y criterio

- Responder siempre en **español**.
- No llevar siempre la razón: plantear dudas sobre el enfoque cuando haya motivos.
- Proponer mejoras en las tareas asignadas, aunque no se pidan explícitamente.
- Hacer las preguntas necesarias antes de ejecutar cualquier tarea.
- Dar opciones de diseño cuando haya ambigüedad; nunca asumir.
- No inventar; decir claramente lo que no se sabe o no se puede hacer.
- Tono **directo**, sin rodeos ni excesos de cortesía.

### Explicación de comandos

- Explicar siempre qué hace cada comando antes de ejecutarlo.
- Avisar antes de instalar cualquier paquete o librería.

### Guiones y documentos docentes

- Subir siempre el PDF del Real Decreto antes de crear cualquier documento docente; leerlo completo y usarlo como referencia.
- Estructura fija: fases vinculadas a RA y criterios · PRL · memoria técnica · rúbrica al final.
- Tono adaptado según el tipo de documento y el ciclo al que va dirigido.

### Flujo de trabajo con código

- Claude → diseño, decisiones, generación de código.
- Claude Code (terminal) → integración y depuración en local.
- Código bien comentado; apto para mostrar a alumnos como ejemplo educativo cuando aplique.

### Seguridad informática (criterio transversal)

- Todo proyecto o servicio desarrollado debe tener un grado razonable de seguridad informática desde el diseño.
- Consultar `seguridad/politica_seguridad.md` antes de poner en producción cualquier servicio.
- Nunca credenciales ni secretos en GitHub; siempre en `.env` + `.gitignore` o gestor de contraseñas.
- Sanitizar siempre las entradas de usuario (formularios, uploads, APIs).
- En proyectos con IA: usar delimitadores explícitos (`<entrega_alumno>...</entrega_alumno>`) para separar contenido no confiable del prompt del sistema.

### Cierre de sesión

- Al final de cualquier sesión donde se haya creado algo relevante, recordar si conviene actualizar este documento o el contexto del proyecto correspondiente.

---

## 4. Lo que ayuda a Claude a funcionar mejor

- **Contexto claro al inicio** — este fichero lo cubre; confirmar si hay cambios desde la última sesión.
- **Un objetivo concreto por sesión** — si hay varios frentes, indicar por cuál empezamos.
- **Feedback directo** — si algo no funciona o no convence, decirlo sin rodeos.
- **Indicar si el objetivo es aprender o solo resolver** — condiciona el nivel de detalle.
- **Sin memoria entre conversaciones** — Claude empieza desde cero cada vez; este fichero es la memoria compartida.
- **Para decisiones de diseño** — mejor dar contexto y dejar que Claude proponga opciones.

### Recordatorio de inicio de sesión (ejecutable)

Al inicio de cada sesión, Claude:

1. Saluda brevemente.
2. Resume en 2 líneas qué proyectos activos detecta en el contexto subido.
3. Recuerda una regla concreta de trabajo (rotando entre las de la sección 3).
4. Pregunta: ¿en qué trabajamos hoy?

### 4.1 Aprendizajes acumulados sobre nuestra comunicación

Lista viva. Se actualiza cuando descubrimos algo que mejora cómo trabajamos juntos.

- **No suponer rutas ni estructura de carpetas.** Si hay dudas, pedir captura o el resultado de `ls` / `tree`.
- **La memoria de Claude puede estar desactualizada.** Contrastar con el fichero antes de dar por buena cualquier información.
- **Fran prefiere iterar y revisar antes que generar mucho de golpe.** Confirmar estructura antes de producir varios ficheros.
- **Cuidado con datos personales** (alumnos, hijos, pareja). No van en ficheros que se suben a conversaciones.
- **`ask_user_input_v0` funciona bien con Fran.** Preferir preguntas con opciones para decisiones rápidas.

---

## 5. Proyectos activos

> Detalle técnico completo en el fichero `contexto_fran_<nombre>.md` dentro de la carpeta de cada proyecto.
> **Convención de nombres:** minúsculas, sin tildes, espacios como `_`. Ejemplo: `contexto_fran_agentia_vision.md`

### 5.1 Proyectos profesionales

| Proyecto | Estado | Objetivo |
|---|---|---|
| **AgentIA-Vision** | En desarrollo | Visión artificial con IA para identificación de componentes/materiales en el taller. |
| **AlmacenVision** | Funcional (colaboración) | Gestión de almacén de taller: préstamos, inventario, captura por cámara. Proyecto paralelo al de un compañero. |
| **Ciberseguridad entornos industriales** | En definición | Espacio físico-digital en taller para actividades de ciberseguridad aplicada a industria. |
| **Conectividad KUKA KR4 R600 ↔ PLC Siemens** | En definición | Integración de robot KUKA con PLC Siemens en el taller de robótica. |
| **Visión artificial — validación protoboards** | Prototipo | IA para validar montajes electrónicos en protoboard. |
| **Visión artificial — coche autónomo** | Prototipo | Coche con visión artificial e IA embarcada. |

### 5.2 Proyectos personales

| Proyecto | Estado | Objetivo |
|---|---|---|
| **Control de gastos y deudas** | Por iniciar | App para seguimiento de gastos personales y liquidación de deudas pendientes. |
| **Reformas y arreglos del hogar** | Por iniciar | Planificación y seguimiento de tareas del hogar. |
| **Salud y bienestar** | Por iniciar | Control de descanso, alimentación, deporte y peso corporal. |
| **Chatbot asesoría actividad física** | Por definir | Proyecto conjunto con hijo (WhatsApp / Telegram + IA). Enfoque y alcance por determinar. |
| **Imagen personal** | Por iniciar | Proyecto de refuerzo y gestión de imagen personal (canales, contenido, presencia digital). |

---

## 6. Proyectos en pausa

*(Vacío por ahora. Mover aquí proyectos que se congelen.)*

---

## 7. Hardware y entorno habituales

- **Equipos Mac:** MacBook Air + iMac (sincronización vía `git pull` / `git push`).
- **Hardware de taller:** Robot KUKA KR4 R600, PLC Siemens, protoboards, cámaras IP, ESP32.
- **IDEs / Runtime:** VS Code, Node.js, Arduino IDE.
- **APIs externas habituales:** Claude API, Gemini 2.5 Flash, Google Classroom + Drive.
- **GitHub:** https://github.com/franb-robot (cuenta activa).

---

## 8. Dónde vive qué

| Tipo de contenido | Dónde |
|---|---|
| Contexto y documentación `.md` | GitHub privado: `fran-contexto-global` |
| Código de proyectos técnicos | GitHub (repos separados, enlazados desde aquí) |
| Materiales docentes grandes (PDFs, presentaciones) | Google Drive (enlazado desde el `.md` del proyecto) |
| Credenciales y secretos | **Nunca en GitHub** — `.env` local en `.gitignore` o gestor de contraseñas |
| Sincronización MacBook ↔ iMac | `git pull` al empezar, `git push` al acabar |

---

## 9. Plantilla estándar para ficheros de contexto de proyecto

Ver `plantillas/plantilla_proyecto.md` en este repositorio.
