/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./assets/**/*.js",
    "./templates/**/*.html.twig",
  ],
  theme: {
    extend: {
      fontFamily: {
        'kadwa': ['"Kadwa"'],
        'koulen': ['"Koulen"'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}