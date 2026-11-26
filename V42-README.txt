V42 startup screen stabilization
- Keeps page invisible until DOM and initial layout settle (with safety timeout).
- Moves startup gate into HEAD to prevent first-paint legacy flash.
- Updates service worker cache namespace.
- Preserves existing data, assets, themes, layouts, and feature scripts.
- This does not remove all legacy code; verify on device.
