# Neovim + VSCode Keybindings Optimizados

Configuración personalizada de Neovim con keybindings optimizados para trabajar en VSCode, eliminando duplicados y mejorando la productividad.

## 🚀 Características Principales

- **Integración perfecta** entre Neovim y VSCode
- **Keybindings consistentes** sin conflictos entre sistemas
- **Navegación fluida** entre editores y splits
- **Operaciones de archivo** optimizadas
- **Gestión de Git** integrada
- **Clipboard del sistema** habilitado
- **Helper functions** para comandos de VSCode

## 📁 Estructura del Proyecto

```
nvim-cursor/
├── init.lua           # Configuración principal de Neovim
├── keybindings.json   # Keybindings de VSCode
├── settings.json      # Configuración de VSCode
└── README.md          # Esta documentación
```

## ⌨️ Keybindings de Neovim (`init.lua`)

### Configuración Básica

- **Leader key**: `Space` (configurado como `vim.g.mapleader`)
- **Helper function**: `vscode_command()` para comandos de VSCode más limpios

### Navegación de Líneas

- `gl` → Ir al final de la línea (`$`)
- `gh` → Ir al inicio de la línea (`0`)
- Funciona en modo normal y visual

### Movimiento de Líneas

- `Shift + k` → Mover línea hacia arriba
- `Shift + j` → Mover línea hacia abajo
- Funciona en modo normal y visual

### Gestión de Splits

- `S` → Split horizontal hacia abajo
- `s` → Split vertical hacia la derecha

### Navegación Entre Editores

- `Ctrl + h` → Navegar a la izquierda
- `Ctrl + l` → Navegar a la derecha
- `Ctrl + j` → Navegar hacia abajo
- `Ctrl + k` → Navegar hacia arriba

### Operaciones de Archivo

- `<leader>w` → Guardar archivo
- `<leader>q` → Cerrar editor activo
- `<leader>e` → Abrir explorador de archivos (VSNetrw)

### Editor y Navegación

- `;` → Siguiente palabra resaltada
- `gi` → Ir a implementación

### Clipboard del Sistema

- `yy` → Copiar línea al portapapeles del sistema
- `y` (en modo visual) → Copiar selección al portapapeles del sistema

### Git y Cambios

- `Enter` → Siguiente cambio en el archivo
- `Backspace` → Cambio anterior en el archivo

## 🎯 Keybindings de VSCode (`keybindings.json`)

### Navegación

- Navegación entre editores y grupos
- Gestión de splits y paneles

### Editor y Archivos

- Operaciones de archivo y editor
- Gestión de vistas y explorador

### Git y SCM

- Control de versiones integrado
- Navegación de cambios

### Terminal y Herramientas

- Terminal integrado
- Debug y herramientas de desarrollo

## 🔧 Optimizaciones Implementadas

1. **Eliminación de duplicados**: No hay keybindings repetidos entre Lua y JSON
2. **Helper function**: `vscode_command()` para comandos de VSCode más limpios
3. **Organización por categorías**: Agrupación lógica de funcionalidades
4. **Consistencia en opciones**: Uso uniforme de `opts` para Neovim
5. **Mejor legibilidad**: Comentarios claros y estructura organizada
6. **Clipboard del sistema**: Integración perfecta con el portapapeles del OS

## 🚦 Uso

- Los keybindings de Neovim se cargan automáticamente desde `init.lua`
- Los keybindings de VSCode se cargan desde `keybindings.json`
- No hay conflictos entre ambos sistemas
- Fácil mantenimiento y extensión

## ➕ Agregar Nuevos Keybindings

### Para Neovim (`init.lua`):

```lua
-- Keybinding básico
map("n", "<key>", "<action>", opts)

-- Comando de VSCode
map("n", "<key>", vscode_command("workbench.action.command"), opts)
```

### Para VSCode (`keybindings.json`):

```json
{
  "key": "<key>",
  "command": "<command>",
  "when": "<condition>"
}
```

## 🎨 Personalización

### Modificar el Leader Key

```lua
-- En init.lua
vim.g.mapleader = " "  -- Cambiar por tu preferencia
```

### Agregar Nuevas Funcionalidades

```lua
-- Ejemplo: nuevo keybinding para buscar
map("n", "<leader>f", vscode_command("actions.find"), opts)
```

## 📝 Notas Técnicas

- **Modo silencioso**: Todos los keybindings usan `silent = true` para evitar output innecesario
- **No recursive**: `noremap = true` previene mapeos recursivos
- **Integración VSCode**: Uso de `VSCodeNotify()` para comandos del editor
- **Compatibilidad**: Funciona en macOS, Linux y Windows

## 🤝 Contribuir

1. Fork del proyecto
2. Crear branch para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit de tus cambios (`git commit -am 'feat: agrega nueva funcionalidad'`)
4. Push al branch (`git push origin feature/nueva-funcionalidad`)
5. Crear Pull Request

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo `LICENSE` para más detalles.
