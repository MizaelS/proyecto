#!/bin/bash

echo "🚀 Iniciando Interfaz Moderna JavaFX..."
echo "=================================="

# Verificar si Java está instalado
if ! command -v java &> /dev/null; then
    echo "❌ Error: Java no está instalado o no está en el PATH"
    exit 1
fi

# Mostrar versión de Java
echo "☕ Versión de Java:"
java -version

echo ""
echo "🔨 Compilando proyecto..."
./gradlew build

if [ $? -eq 0 ]; then
    echo "✅ Compilación exitosa"
    echo ""
    echo "🎨 Ejecutando aplicación JavaFX..."
    echo "   (Se abrirá la ventana de la aplicación)"
    echo ""
    ./gradlew run
else
    echo "❌ Error en la compilación"
    exit 1
fi
