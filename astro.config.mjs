import { defineConfig } from 'astro/config';

// Статическая визитка. Отдача через `astro preview` (node), без nginx.
export default defineConfig({
  site: 'https://kopanda.ru',
});
