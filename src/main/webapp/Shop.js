class Sliders {
    constructor() {
        this.currentSlider = 0;
        this.sliders = document.querySelectorAll('#Shop_slider .slider');
        console.log('Sliders: ' + this.sliders.length);
        this.dots = document.querySelectorAll('.dot');

        console.log('Dots: ' + this.dots.length);
        this.totalSliders = this.sliders.length;

        this.showSlider(this.currentSlider);
        this.addEventListeners();
        this.startAutoSlide();
    }

    showSlider(index) {
        // Hide all sliders
        this.sliders.forEach(slider => {
            slider.style.display = 'none';
        });

        // Remove active class from all dots
        this.dots.forEach(dot => {
            dot.classList.remove('active');
        });

        // Show the current slider
        this.sliders[index].style.display = 'block';

        // Add active class to the current dot
        this.dots[index].classList.add('active');
    }

    nextSlider() {
        this.currentSlider++;
        if (this.currentSlider >= this.totalSliders) {
            this.currentSlider = 0;
        }
        this.showSlider(this.currentSlider);
    }

    previousSlider() {
        this.currentSlider--;
        if (this.currentSlider < 0) {
            this.currentSlider = this.totalSliders - 1;
        }
        this.showSlider(this.currentSlider);
    }

    addEventListeners() {
        const nextButton = document.querySelector('#Shop_next');
        const prevButton = document.querySelector('#Shop_pre');

        nextButton.addEventListener('click', () => {
            this.nextSlider();
        });

        prevButton.addEventListener('click', () => {
            this.previousSlider();
        });
    }
    startAutoSlide() {
        // Slide every 2 seconds
        setInterval(() => {
            this.nextSlider();
        }, 2000);
    }
}

document.addEventListener('DOMContentLoaded', (event) => {
    const sliders = new Sliders();
});
