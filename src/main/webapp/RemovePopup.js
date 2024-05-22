document.addEventListener('click', function(e){
    if(e.target.id === 'overlay'){
        e.target.remove();
    }
});