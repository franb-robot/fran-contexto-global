# fran-contexto-global

> Repositorio privado. Memoria compartida entre Fran y Claude (y cualquier agente futuro).
> Sincronizar siempre al iniciar y cerrar sesión de trabajo: `git pull` → trabajar → `git push`.

---

## Cómo usar este repositorio

1. **Al iniciar una sesión con Claude:** sube `contexto_fran_general.md` + el `contexto_fran_<proyecto>.md` del proyecto en el que vas a trabajar.
2. **Al cerrar una sesión:** actualiza el `.md` correspondiente si hubo cambios relevantes y haz `git push`.
3. **Para un proyecto nuevo:** duplica `plantillas/plantilla_proyecto.md`, rellénala y guárdala en la carpeta del ámbito correspondiente.

---

## Estructura

```
fran-contexto-global/
│
├── README.md                              ← Este fichero
├── contexto_fran_general.md               ← Fichero maestro (perfil, forma de trabajar, proyectos)
│
├── docencia/
│   ├── contexto_fran_docencia.md          ← Centro, módulos, alumnado, plataformas (detalle)
│   └── proyectos/
│       ├── contexto_fran_agentia_vision.md
│       ├── contexto_fran_almacenvision.md
│       ├── contexto_fran_ciberseguridad_industrial.md
│       ├── contexto_fran_kuka_plc.md
│       ├── contexto_fran_vision_protoboard.md
│       └── contexto_fran_vision_coche.md
│
├── personal/
│   ├── contexto_fran_personal.md          ← Valores, metas vitales, rutinas
│   └── proyectos/
│       ├── contexto_fran_gastos_deudas.md
│       ├── contexto_fran_reformas_hogar.md
│       ├── contexto_fran_salud_bienestar.md
│       ├── contexto_fran_chatbot_deporte.md
│       └── contexto_fran_imagen_personal.md
│
├── seguridad/
│   └── politica_seguridad.md              ← Criterios mínimos para todo lo que se desarrolle
│
└── plantillas/
    ├── plantilla_proyecto.md              ← Para cualquier proyecto nuevo
    └── plantilla_sesion_claude.md         ← Checklist de inicio de sesión con Claude
```

---

## Dónde vive qué

| Tipo de contenido | Dónde |
|---|---|
| Contexto y documentación `.md` | Este repositorio (privado) |
| Código de proyectos técnicos | Repos GitHub separados (enlazados desde el `.md` del proyecto) |
| Materiales docentes grandes (PDFs, presentaciones) | Google Drive (enlazado desde el `.md` del proyecto) |
| Credenciales y secretos | `.env` local en `.gitignore` — **nunca en GitHub** |
| Sincronización MacBook ↔ iMac | `git pull` al empezar · `git push` al acabar |

---

## Repos de código relacionados

| Proyecto | Repo |
|---|---|
| AgentIA-Vision | https://github.com/franb-robot/AgentIA-Vision |
| AgentIA-Warehouse | https://github.com/franb-robot/AgentIA-Warehouse |
| *(añadir según crezcan)* | |

---

## Convención de nombres

- Minúsculas, sin tildes, espacios como `_` para ficheros y `-` para directorios o carpetas.
- Formato: `contexto_fran_<nombre_proyecto>.md`
- Ejemplos: `contexto_fran_kuka_plc.md`, `contexto_fran_salud_bienestar.md`
