$(document).ready(function() {
    $('#get-data-btn').click(function() {
      // Obtener datos del sitio 1
      var site1Description = $('#site1-description').val();
      if (site1Description !== '') {
        scrapeData('site1', site1Description);
      }
  
      // Obtener datos del sitio 2
      // ... Código similar para los otros sitios (site2, site3, site4, site5)
    });
  
    $('#clear-data-btn').click(function() {
      // Borrar datos de los contenedores
      $('.category, .description, .price').empty();
  
      // Borrar datos ingresados por el usuario
      $('input[name^="site"]').val('');
    });
  
    function scrapeData(site, product) {
      // Obtener la URL del sitio web
      var siteUrl_1 = $('#' + site + '-url').val();
   
      // Realizar el web scraping utilizando Cheerio
      $.ajax({
        url: siteUrl_1,
        method: 'GET',
        success: function(data) {
          // Realizar búsqueda flexible utilizando fuse.js
          var options = {
            includeScore: true,
            threshold: 0.4, // Valor de umbral para la similitud
            keys: ['Name'] // Propiedades a considerar en la búsqueda
          };
          var fuse = new fuse(productData, options);
          var searchResult = fuse.search(product);
  
          // Mostrar hasta tres mejores coincidencias en contenedores separados
          var numResults = Math.min(searchResult.length, 3);
          for (var i = 0; i < numResults; i++) {
            var result = searchResult[i];
            var similarity = (1 - result.score) * 100; // Calcular similitud en porcentaje
  
            // Mostrar los resultados en contenedores "Coincidencia X"
            $('#' + site + '-match-' + (i + 1)).text('Coincidencia ' + (i + 1) + ': ' + result.item.name + ' (Similitud: ' + similarity.toFixed(2) + '%)');
          }
  
          // Utilizar Cheerio para analizar el contenido HTML
          var $ = cheerio.load(data);
  
          // Ejemplo de extracción de datos utilizando seletores CSS
          var scrapedCategory = $('.product-category').text();
          var scrapedDescription = $('.product-description').text();
          var scrapedPrice = $('.product-price').text();
  
          // Asignar los datos obtenidos a los contenedores correspondientes
          $('#' + site + '-category').text('Categoría: ' + scrapedCategory);
          $('#' + site + '-description').text('Descripción del Producto: ' + scrapedDescription);
          $('#' + site + '-price').text('Precio Unitario: ' + scrapedPrice);
        },
        error: function() {
          console.log('Error al realizar la solicitud de web scraping');
        }
      });
    }
  });
  
