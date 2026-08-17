(function () {

  var rotationDelay = 5000;
  var timer = null;
  var current = 0;
  var interactionPaused = false;
  var carousel = document.querySelector('.carousel-window');
  var dots = document.querySelectorAll('.carousel-dot');
  var slides = document.querySelectorAll('.carousel-slide');
  var filename = document.getElementById('carousel-filename');
  var pauseButton = document.querySelector('.carousel-pause');
  var reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
  var manualPaused = reducedMotion.matches;

  if (
    !carousel ||
    !dots.length ||
    dots.length !== slides.length ||
    !filename ||
    !pauseButton
  ) {
    return;
  }

  function updatePauseButton() {
    var icon = pauseButton.querySelector('span');
    pauseButton.setAttribute(
      'aria-pressed',
      String(manualPaused)
    );
    pauseButton.setAttribute(
      'aria-label',
      manualPaused
        ? 'Resume automatic rotation'
        : 'Pause automatic rotation'
    );
    if (icon) {
      icon.textContent = manualPaused ? '>' : '||';
    }
  }

  function stopTimer() {
    if (timer !== null) {
      clearInterval(timer);
      timer = null;
    }
  }

  function canRotate() {
    return (
      !manualPaused &&
      !interactionPaused &&
      !document.hidden
    );
  }

  function startTimer() {
    stopTimer();
    if (canRotate()) {
      timer = setInterval(function () {
        goTo(current + 1);
      }, rotationDelay);
    }
  }

  function goTo(n) {
    slides[current].classList.remove('active');
    slides[current].setAttribute('aria-hidden', 'true');
    dots[current].classList.remove('active');
    dots[current].setAttribute('aria-pressed', 'false');
    current = (n + slides.length) % slides.length;
    slides[current].classList.add('active');
    slides[current].setAttribute('aria-hidden', 'false');
    dots[current].classList.add('active');
    dots[current].setAttribute('aria-pressed', 'true');
    filename.textContent = slides[current].dataset.filename;
  }

  dots.forEach(function (dot) {
    dot.addEventListener('click', function () {
      goTo(parseInt(this.dataset.index, 10));
    });
  });

  pauseButton.addEventListener('click', function () {
    manualPaused = !manualPaused;
    updatePauseButton();
    if (manualPaused) {
      stopTimer();
    } else {
      startTimer();
    }
  });

  carousel.addEventListener('mouseenter', function () {
    interactionPaused = true;
    stopTimer();
  });
  carousel.addEventListener('mouseleave', function () {
    interactionPaused = false;
    startTimer();
  });
  carousel.addEventListener('focusin', function () {
    interactionPaused = true;
    stopTimer();
  });
  carousel.addEventListener('focusout', function (event) {
    if (!carousel.contains(event.relatedTarget)) {
      interactionPaused = false;
      startTimer();
    }
  });

  document.addEventListener('visibilitychange', function () {
    if (document.hidden) {
      stopTimer();
    } else {
      startTimer();
    }
  });
  reducedMotion.addEventListener('change', function (event) {
    if (event.matches) {
      manualPaused = true;
      updatePauseButton();
      stopTimer();
    }
  });

  updatePauseButton();
  startTimer();

}());
