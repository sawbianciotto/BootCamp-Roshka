# PrestamoLibrosSp

Proyecto de gestión de préstamos de libros para colegios, con backend en Java Spring Boot y frontend en Next.js/React.

---

## Requisitos

- **Backend:**
  - Java 17+
  - Maven

- **Frontend:**
  - Node.js 18+
  - npm

- **Base de datos:**
  - MySQL (o la que uses, ajusta la configuración en el backend)

---

## Instalación

### 1. Clonar el repositorio

```bash
git clone <URL_DEL_REPO>
cd prestamoLibrosSp
```

### 2. Backend

```bash
cd src/main/java/org/example/prestamolibrossp
# Configura tu base de datos en application.properties
# Luego compila y ejecuta:
mvn spring-boot:run
```

### 3. Frontend

```bash
cd frontend
npm install
npm run dev
```

---

## Uso

1. Accede al frontend en [http://localhost:3000](http://localhost:3000)
2. Inicia sesión con tus credenciales (user1 y user1pass).
3. Visualiza y gestiona los préstamos de libros.

---

## Notas

- El archivo `.env` en frontend y `application.properties` en backend deben contener la configuración de tu entorno (puertos, credenciales, etc).

---

## Scripts útiles

- **Backend:**  
  - `mvn spring-boot:run` — Ejecuta el backend.
- **Frontend:**  
  - `npm run dev` — Ejecuta el frontend en modo desarrollo.
  - `npm run build` — Compila el frontend para producción.

---
