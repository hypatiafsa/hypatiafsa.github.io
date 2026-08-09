(function () {

  var timer;
  var current = 0;
  var dots = document.querySelectorAll('.carousel-dot');
  var slides = document.querySelectorAll('.carousel-slide');
  var filename = document.getElementById('carousel-filename');

  if (!dots.length || !slides.length || !filename) return;

  function goTo(n) {
    slides[current].classList.remove('active');
    dots[current].classList.remove('active');
    dots[current].setAttribute('aria-selected', 'false');
    current = (n + slides.length) % slides.length;
    slides[current].classList.add('active');
    dots[current].classList.add('active');
    dots[current].setAttribute('aria-selected', 'true');
    filename.textContent = slides[current].dataset.filename;
  }

  function next() { goTo(current + 1); }
  function startTimer() { timer = setInterval(next, 25000); }
  function stopTimer() { clearInterval(timer); }

  dots.forEach(function (dot) {
    dot.addEventListener('click', function () {
      stopTimer();
      goTo(parseInt(this.dataset.index));
      startTimer();
    });
  });

  startTimer();

}());
