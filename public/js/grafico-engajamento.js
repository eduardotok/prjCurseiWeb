const ctx = document.querySelectorAll('.myChart')[0].getContext('2d');

const dados1 = window.seguidores
const dados2 = window.curtidas
const dados3 = window.seguidores6Meses

const label6Meses = window.nomeMeses6Meses

console.log(dados3)
let grafico;

function criarGrafico(tipo){



if(grafico){
    grafico.destroy();
}

    if(tipo === 'mes'){
        grafico = new Chart(ctx, {
            type: 'line',
            data:{
                datasets: [{
                    label: 'Seguidores',
                    data: dados1,
                    borderColor: '#FF5733',
                    backgroundColor: '#FF5733',
                    fill: false,
                    tension: 0.1
                }, {
                    label: 'Curtidas',
                    data: dados2,
                    borderColor: 'black',
                    backgroundColor: 'black',
                    fill: false,
                    tension: 0.1
                }]
            },
            options:{
        
                responsive: true,
                plugins:{
                    legend:{
                        display: true,
                        position: 'top',
                    },
                    title:{
                        display: true,
                        text: 'Engajamento Mensal',
                        align: 'center',
                        weight: 'bold',
                        font:{
                            size: 20
                        }
                    },
                    animations:{
                        tension:{
                            duration: 1000,
                            easing: 'easeInOutQuad',
                            from: 1,
                            to: 0,
                            loop: true
                        },
                    
                },
        
            }
        }
        
        })
    }

    else if(tipo === 'ultimos6'){
        grafico = new Chart(ctx, {
            type: 'line',
            data:{
                datasets: [{
                    label: 'Seguidores',
                    data: dados3,
                    borderColor: '#FF5733',
                    backgroundColor: '#FF5733',
                    fill: false,
                    tension: 0.1
                }, {
                    label: 'Curtidas',
                    borderColor: 'black',
                    backgroundColor: 'black',
                    fill: false,
                    tension: 0.1
                }],

            },
            options:{
        
                responsive: true,
                plugins:{
                    legend:{
                        display: true,
                        position: 'top',
                    },
                    title:{
                        display: true,
                        text: 'Ultimos 6 Meses',
                        align: 'center',
                        weight: 'bold',
                        font:{
                            size: 20
                        }
                    },
                    animations:{
                        tension:{
                            duration: 1000,
                            easing: 'easeInOutQuad',
                            from: 1,
                            to: 0,
                            loop: true
                        },
                    
                },
        
            }
        }
        
        })
    }
}

document.getElementById('select-grafico').addEventListener('change', function () {
    criarGrafico(this.value);
});

criarGrafico(document.getElementById('select-grafico').value);
