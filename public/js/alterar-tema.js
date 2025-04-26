const temaLaranja = document.querySelector('.button-laranja')
const temaAzul = document.querySelector('.button-azul')
const temaVermelho = document.querySelector('.button-vermelho')
const temaDark = document.querySelector('.button-dark')
const temaRoxo = document.querySelector('.button-roxo')

temaLaranja.addEventListener('click', () => {
    document.body.className = '';

    document.body.className = 'laranja'

    localStorage.setItem('tema', 'laranja')
})

temaAzul.addEventListener('click', () => {
    document.body.className = '';

    document.body.className = 'azul'

    localStorage.setItem('tema', 'azul')

})

temaVermelho.addEventListener('click', () => {
    document.body.className = '';

    document.body.className = 'vermelho'

    localStorage.setItem('tema', 'vermelho')

})

temaDark.addEventListener('click', () => {
    document.body.className = '';

    document.body.className = 'dark'

    localStorage.setItem('tema', 'dark')

})

temaRoxo.addEventListener('click', () => {
    document.body.className = '';

    document.body.className = 'roxo'

    localStorage.setItem('tema', 'roxo')

})


