(function () {
  var storageKey = 'hypatia-theme';
  var root = document.documentElement;
  var toggle = document.querySelector('[data-theme-toggle]');
  var mediaQuery = window.matchMedia('(prefers-color-scheme: dark)');

  if (!toggle) return;

  function getSavedTheme() {
    try {
      return localStorage.getItem(storageKey);
    } catch (error) {
      return null;
    }
  }

  function updateToggle(theme) {
    var isDark = theme === 'dark';
    toggle.setAttribute('aria-pressed', String(isDark));
    toggle.setAttribute('aria-label', 'Switch to ' + (isDark ? 'light' : 'dark') + ' theme');
    toggle.querySelector('.theme-toggle-label').textContent = isDark ? 'Dark' : 'Light';
  }

  function setTheme(theme, save) {
    root.dataset.theme = theme;
    updateToggle(theme);
    if (save) {
      try {
        localStorage.setItem(storageKey, theme);
      } catch (error) {
      }
    }
  }

  updateToggle(root.dataset.theme);
  toggle.addEventListener('click', function () {
    setTheme(root.dataset.theme === 'dark' ? 'light' : 'dark', true);
  });
  mediaQuery.addEventListener('change', function (event) {
    if (!getSavedTheme()) setTheme(event.matches ? 'dark' : 'light', false);
  });
}());
