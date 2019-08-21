const btn = document.querySelector('#btn');
const modal = document.querySelector('.modal-container');
const modalCloseBtn = document.querySelector('#modal-close-btn');

btn.addEventListener('click', (e) => {
    modal.style.display = 'flex';
});

modalCloseBtn.addEventListener('click', (e) => {
    modal.style.display = 'none';
});

modal.addEventListener('click', (e) => {
    if(e.target.classList.contains('modal-container')) {
        modal.style.display = 'none';
    }
});