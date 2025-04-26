const inputSenha = document.getElementById('inputSenha');
const verSenha = document.getElementById('verSenha');

verSenha.addEventListener('click', () => {
    const tipoAtual = inputSenha.getAttribute('type');
    inputSenha.setAttribute('type', tipoAtual === 'password' ? 'text' : 'password');

  });